abstract class BaseRule {
  var _errorMsg;

  BaseRule({String errorMsg = "Invalid Email Address!"}){
    this.errorMsg(errorMsg);
  }

  get errorMsg => _errorMsg;

  set errorMsg(String value) {
    _errorMsg = value;
  }

  bool validate(String text);
}
