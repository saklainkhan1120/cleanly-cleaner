import 'dart:convert';

import 'package:cleanly_cleaner/exceptions/http_res_error_exception.dart';
import 'package:cleanly_cleaner/exceptions/http_res_logout_exception.dart';
import 'package:cleanly_cleaner/repositories/base_repo.dart';
import 'package:cleanly_cleaner/services/network_const.dart';
import 'package:cleanly_cleaner/services/response_status.dart';
import 'package:cleanly_cleaner/services/url_provider.dart';
import 'package:cleanly_cleaner/utils/app_sharedprefs.dart';

class AuthRepo extends Repository {
  static AuthRepo? _mInstance;

  static AuthRepo getInstance() {
    _mInstance ??= AuthRepo();
    return _mInstance!;
  }

  Future<String> authenticate(Map<String, dynamic> params) async {
    String url = UrlProvider.getAuthenticate();
    print(url);
    ResponseStatus responseStatus =
        await networkManager.post(url: url, params: params);
    if (responseStatus.getSuccess() == NetworkConstants.OK) {
      try {
        String data = responseStatus.getMessage()!;
        AppSharedPrefs.saveAuthToken(data);
        print("repo--------------");
        return data;
      } catch (e) {
        print("${e.toString()}--------------");
        throw HTTPResErrorException(e.toString());
      }
    } else if (responseStatus.getError() == NetworkConstants.ERROR) {
      throw HTTPResErrorException(responseStatus.getMessage() ?? "ERROR");
    } else if (responseStatus.getError() == NetworkConstants.LOGOUT) {
      throw HTTPResLogoutException(
          responseStatus.getMessage() ?? "Please login again!");
    } else {
      throw HTTPResErrorException(responseStatus.getMessage() ?? "ERROR");
    }
  }

  Future<List<dynamic>> getLogout() async {
    String url = UrlProvider.getLogout();
    print(url);
    ResponseStatus responseStatus = await networkManager.get(url: url);
    if (responseStatus.getError() == NetworkConstants.OK) {
      try {
        List<dynamic> data = jsonDecode(responseStatus.getData());
        return data;
      } catch (e) {
        throw HTTPResErrorException(e.toString());
      }
    } else if (responseStatus.getError() == NetworkConstants.ERROR) {
      throw HTTPResErrorException(responseStatus.getMessage() ?? "ERROR");
    } else if (responseStatus.getError() == NetworkConstants.LOGOUT) {
      throw HTTPResLogoutException(
          responseStatus.getMessage() ?? "Please login again!");
    } else {
      throw HTTPResErrorException(responseStatus.getMessage() ?? "ERROR");
    }
  }
}
