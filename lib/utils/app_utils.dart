import 'dart:io';
import 'dart:math';

import 'package:cleanly_cleaner/utils/ui_helper.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

class AppUtil {
  static Future<bool> isConnectedToInternet() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    return connectivityResult != ConnectivityResult.none;
  }

  static http.MultipartFile getHttpMultipartFile(
      String keyName, String filePath) {
    return http.MultipartFile.fromBytes(
        keyName, File(filePath).readAsBytesSync(),
        filename: filePath.split("/").last);
  }

  static String getFormattedCreatedAtDate(String createdAt) {
    try {
      return DateFormat('dd-MM-yyyy')
          .format(DateFormat('yyyy-MM-dd HH:mm:ss').parse(createdAt));
    } catch (e) {
      return createdAt;
    }
  }

  static String getBuildUrlWithSeparator(List<String> paths) {
    //here at 0th index should be domain
    try {
      String realPath = '';
      for (int i = 0; i < paths.length; i++) {
        if (i == 0) {
          //"http://kitaablovers.kgninfotech.com"
          //remove first and last '/'
          if (paths[0].startsWith('/')) {
            paths[0] = paths[0].replaceFirst('/', '');
          }
          if (paths[0].endsWith('/')) {
            paths[0] = paths[0].substring(0, paths[0].length - 1);
          }
        } else {
          // "/api/public/registerUser"
          // now add '/' at first if '/' not available
          // and remove '/' from last if available
          if (!paths[i].startsWith('/')) {
            paths[i] = '/' + paths[i];
          }
          if (paths[i].endsWith('/')) {
            paths[i] = paths[i].substring(0, paths[i].length - 1);
          }
        }
        realPath = realPath + paths[i];
      }
      return realPath;
    } catch (e) {
      UIHelper.showShortToast(e.toString());
      return "EXCEPTION_CAUGHT";
    }
  }
}
