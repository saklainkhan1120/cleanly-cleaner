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
      log('<-------------------------------- runtimeType.toString() ------------------------------------------------------------------------->');
      returnValue.setError(jsonMap['success']);
      if (jsonMap.containsKey('error'))
        returnValue.setError(jsonMap['error'] as int);
      if (jsonMap.containsKey('errors'))
        returnValue.setError(jsonEncode(jsonMap['errors'] ?? '') as int);
      if (jsonMap.containsKey('success'))
        returnValue.setSuccess(jsonMap['success'] as bool?);
      if (jsonMap.containsKey('message'))
        returnValue.setMessage(jsonEncode(jsonMap['message']));
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
