class ResponseStatus {
  int? _error;
  String? _message;
  String? _user;
  String? _data;
  String? _accessToken;
  bool? _success;

  String get accessToken => _accessToken ?? '';

  set accessToken(String value) {
    _accessToken = value;
  }

  bool? getSuccess() {
    return _success;
  }

  void setSuccess(bool? val) {
    this._success = val;
  }

  int? getError() {
    return _error;
  }

  void setError(int? error) {
    _error = error;
  }

  String? getMessage() {
    return _message;
  }

  void setMessage(String message) {
    _message = message;
  }

  String? getUser() {
    return _user;
  }

  void setUser(String user) {
    _user = user;
  }

  String getData() {
    return _data ?? '';
  }

  void setData(String? data) {
    _data = data;
  }
}
