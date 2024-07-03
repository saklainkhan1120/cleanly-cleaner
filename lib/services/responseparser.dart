import 'dart:convert';
import 'dart:developer';

import 'package:cleanly_cleaner/models/user.dart';
import 'package:cleanly_cleaner/services/response_status.dart';

class ResponseParser {
  static ResponseParser? _mInstance;

  static ResponseParser getInstance() {
    _mInstance ??= ResponseParser();
    return _mInstance!;
  }

  ResponseStatus getResponseStatus(
      String response, String url, String reqType, int statusCode) {
    log('<--------------------------------------------------------------------------------------------------------->');
    log('[$reqType] [$statusCode] $url: \n$response',
        name: runtimeType.toString());
    log('<--------------------------------------------------------------------------------------------------------->');

    ResponseStatus returnValue = new ResponseStatus();
    try {
      Map<String, dynamic> jsonMap = jsonDecode(response);
      returnValue.setSuccess(jsonMap['success'] as bool);
      if (jsonMap.containsKey('error'))
        returnValue.setSuccess(jsonMap['error'] as bool);
      if (jsonMap.containsKey('error'))
        returnValue.setError(jsonMap['error'] as int);
      /* if (jsonMap.containsKey('success'))
        returnValue.setError(jsonMap['success'] as int);*/
      if (jsonMap.containsKey('token'))
        returnValue.accessToken = jsonEncode(jsonMap['token']);
/*      if (jsonMap.containsKey('message'))
        returnValue.setMessage(jsonEncode(jsonMap['message']));*/
      if (jsonMap.containsKey('token'))
        returnValue.setMessage(jsonEncode(jsonMap['token']));
      /* if (jsonMap.containsKey('error'))
        returnValue.setMessage(jsonEncode(jsonMap['error']as int ));*/
    } catch (e) {
      log(
        '$response',
        name: runtimeType.toString(),
        error: e,
      );
    }
    return returnValue;
  }

  Data getUser(String data) {
    return Data.fromJson(jsonDecode(data));
  }
}
