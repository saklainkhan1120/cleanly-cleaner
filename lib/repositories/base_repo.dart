import 'package:cleanly_cleaner/services/http_helper.dart';
import 'package:cleanly_cleaner/services/responseparser.dart';

abstract class Repository {
  HttpHelper networkManager = HttpHelper.getInstance();
  ResponseParser responseParser = ResponseParser.getInstance();
}
