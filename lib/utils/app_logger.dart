import 'dart:developer';

class Log {
  static void d(Object tag, String message) {
    log(message, name: tag.runtimeType.toString());
  }

  static void e(Object tag, String? message) {
    log('', name: tag.runtimeType.toString(), error: message);
  }
}
