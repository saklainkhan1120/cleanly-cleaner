import 'dart:developer';

import 'package:cleanly_cleaner/services/network_const.dart';
import 'package:cleanly_cleaner/services/response_status.dart';
import 'package:cleanly_cleaner/services/responseparser.dart';
import 'package:cleanly_cleaner/utils/app_logger.dart';
import 'package:cleanly_cleaner/utils/app_sharedprefs.dart';
import 'package:cleanly_cleaner/utils/app_utils.dart';
import 'package:http/http.dart' as http;

class HttpHelper {
  static HttpHelper? _mInstance;
  final ResponseParser _mParser = ResponseParser.getInstance();
  static const String CONNECTION_TIMEOUT_MESSAGE =
      'Problem with internet connection,request timeout';
  static const int TIMEOUT_HTTP_ERROR_CODE = 408;
  static const int UNAUTHENTICATED_HTTP_ERROR_CODE = 401;
  static const int OK_HTTP_CODE = 200;

  static HttpHelper getInstance() {
    _mInstance ??= HttpHelper();
    return _mInstance!;
  }

  /*Map<String, String> _getBasicHeaders() => {'Accept': 'application/json'};*/

  Future<Map<String, String>> _getHeadersWithBearer() async => {
        'Accept': 'application/json',
        'Authorization': 'Bearer ' + ((AppSharedPrefs.getAuthToken()) ?? '')
      };

  Future<ResponseStatus> post(
      {required String url,
      Map<String, dynamic>? params,
      Function? callback}) async {
    ResponseStatus status = ResponseStatus();
    print(params.toString());
    print(await _getHeadersWithBearer());
    if (await AppUtil.isConnectedToInternet()) {
      try {
        print("--------------post------------------------------------");
        print(url);
        var response = await http
            .post(Uri.parse(url),
                body: params, headers: await _getHeadersWithBearer())
            .timeout(const Duration(seconds: 60), onTimeout: () async {
          return http.Response(
              CONNECTION_TIMEOUT_MESSAGE, TIMEOUT_HTTP_ERROR_CODE);
          print("----------------postcomp---------------------");
        });
        print("--------------------------before response------------");
        print(response.body.toString());
        if (response.statusCode == OK_HTTP_CODE) {
          print("-------ok-------");
          ResponseStatus responseStatus = _mParser.getResponseStatus(
              response.body, url, 'POST', response.statusCode);
          print(responseStatus.getMessage());
          return responseStatus;
        } else if (response.statusCode == TIMEOUT_HTTP_ERROR_CODE) {
          status.setData(null);
          status.setMessage(CONNECTION_TIMEOUT_MESSAGE);
          status.setError(NetworkConstants.ERROR);
          Log.e(this, status.getMessage());
          return status;
        } else if (response.statusCode == UNAUTHENTICATED_HTTP_ERROR_CODE) {
          status.setData(null);
          status.setMessage('Please sign in again');
          status.setError(NetworkConstants.LOGOUT);
          Log.e(this, status.getMessage());

          return status;
        } else {
          status.setData(null);
          status.setMessage(
              '$url\nServer Error!! with response code:${response.statusCode}');
          status.setError(NetworkConstants.ERROR);
          Log.e(this, status.getMessage());

          return status;
        }
        //callback(responseStatus);
      } catch (e) {
        print("In error");
        log('', name: runtimeType.toString(), error: e.toString());
        status.setData(null);
        status.setMessage(e.toString());
        status.setError(NetworkConstants.ERROR);

        return status;
      }
    } else {
      status.setData(null);
      status.setMessage('No Internet Connection!!');
      status.setError(NetworkConstants.ERROR);
      Log.e(this, status.getMessage());
      return status;
    }
  }

  Future<ResponseStatus> get({required String url}) async {
    ResponseStatus status = ResponseStatus();
    log('Hitted $url', name: runtimeType.toString());

    if (await AppUtil.isConnectedToInternet()) {
      try {
        var response = await http
            .get(Uri.parse(url), headers: await _getHeadersWithBearer())
            .timeout(const Duration(seconds: 60), onTimeout: () async {
          return http.Response(
              CONNECTION_TIMEOUT_MESSAGE, TIMEOUT_HTTP_ERROR_CODE);
        });
        print(response.body);
        if (response.statusCode == OK_HTTP_CODE) {
          ResponseStatus responseStatus = _mParser.getResponseStatus(
              response.body, url, 'GET', response.statusCode);
          return responseStatus;
        } else if (response.statusCode == TIMEOUT_HTTP_ERROR_CODE) {
          status.setData(null);
          status.setMessage(CONNECTION_TIMEOUT_MESSAGE);
          status.setError(NetworkConstants.ERROR);

          return status;
        } else if (response.statusCode == UNAUTHENTICATED_HTTP_ERROR_CODE) {
          status.setData(null);
          status.setMessage('Please sign in again');
          status.setError(NetworkConstants.LOGOUT);
          Log.e(this, status.getMessage());

          return status;
        } else {
          status.setData(null);
          status.setMessage(
              '${url}\nServer Error!! with response code:${response.statusCode}');
          status.setError(NetworkConstants.ERROR);
          Log.e(this, status.getMessage());

          return status;
        }
        //callback(responseStatus);
      } catch (e) {
        log('', name: runtimeType.toString(), error: e.toString());
        status.setData(null);
        status.setMessage(e.toString());
        status.setError(NetworkConstants.ERROR);

        return status;
      }
    } else {
      status.setData(null);
      status.setMessage('No Internet Connection!!');
      status.setError(NetworkConstants.ERROR);

      Log.e(this, status.getMessage());

      return status;
    }
  }

  Future<ResponseStatus> multipart(
      {required String url,
      required Map<String, String> params,
      required Map<String, String> keyWithImagePaths}) async {
    ResponseStatus status = ResponseStatus();
    Log.d(this, 'PARAMS => ' + params.toString());
    Log.d(this, 'PARAMS MULTIPART => ' + keyWithImagePaths.toString());

    if (await AppUtil.isConnectedToInternet()) {
      try {
        Log.d(this, '$url');
        var request = http.MultipartRequest('POST', Uri.parse(url));

        request.headers.addAll(await _getHeadersWithBearer());

        if (keyWithImagePaths.entries.isNotEmpty) {
          List<http.MultipartFile?> files =
              keyWithImagePaths.entries.map((singlePair) {
            if (singlePair.key.isNotEmpty && singlePair.value.isNotEmpty) {
              return AppUtil.getHttpMultipartFile(
                  singlePair.key, singlePair.value);
            }
          }).toList();
          files = files.where((element) => element != null).toList();
          if (files.isNotEmpty) {
            request.files.addAll(files.map((e) => e!).toList());
          }
        }

        request.fields.addAll(params);

        http.StreamedResponse multipartRequest = await request.send();
        print(multipartRequest.statusCode);
        if (multipartRequest.statusCode == 200 ||
            multipartRequest.statusCode == 401) {
          String body = await multipartRequest.stream.bytesToString();
          print(body);
          ResponseStatus responseStatus = _mParser.getResponseStatus(
              body, url, 'POST', multipartRequest.statusCode);
          return responseStatus;
        } else {
          String body = await multipartRequest.stream.bytesToString();
          print(body);
          status.setData(null);
          status.setMessage(
              '$url\nServer Error!! with response code:${multipartRequest.statusCode}');
          status.setError(1);
          return status;
        }
      } catch (e, trace) {
        Log.e(this, e.toString());
        status.setData(null);
        status.setMessage(e.toString());
        status.setError(1);
        Log.e(this, trace.toString());
        return status;
      }
    } else {
      status.setData(null);
      status.setMessage('No Internet Connection!!');

      status.setError(1);
      return status;
    }
  }
}
