abstract class BaseRule {
  var _errorMsg;

  BaseRule({String errorMsg = "Invalid Email Address!"}) {
    _errorMsg = errorMsg;
  }

  String get errorMsg => _errorMsg;

  set errorMsg(String value) {
    _errorMsg = value;
  }

  bool validate(String text);
}
