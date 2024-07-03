import 'package:cleanly_cleaner/utils/app_utils.dart';

class UrlProvider {
  static const String DOMAIN = "https://betamightyfyn.mightytech.dev/";

  static const String LOGIN = '/api/login';
  static const String LOGOUT = '/api/logout';

  static String getDomain() => DOMAIN;

  static getAuthenticate() {
    return AppUtil.getBuildUrlWithSeparator([getDomain(), LOGIN]);
  }

  static getLogout() {
    return AppUtil.getBuildUrlWithSeparator([getDomain(), LOGOUT]);
  }
}
