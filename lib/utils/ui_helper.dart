import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class UIHelper {
  static void showShortToast(String? message) {
    if (message != null) {
      Fluttertoast.showToast(
          msg: message,
          backgroundColor: Colors.grey.shade200,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          textColor: Colors.black,
          fontSize: 14.0);
    }
  }
}
