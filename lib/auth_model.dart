class AuthModel {
  bool _authorized = false;

  bool get authorized {
    return _authorized;
  }

  void authrozie(value) {
    _authorized = value;
  }
}
