

import 'package:easy_validator/src/rules/base_rule.dart';
import 'package:easy_validator/src/rules/non_empty_rule.dart';
import 'package:easy_validator/src/rules/regex_rule.dart';

class Validator {
  Validator({String text}) : _text = text;

  var _text;
  var rulesList = List<BaseRule>();

  var _isValid = true;
  var _errorMessage = "";
  void Function(String msg) errorCallback;
  void Function() successCallback;

  bool check() {
    for (var rule in rulesList) {
      if (!rule.validate(_text)) {
        setError(rule.errorMsg);
        break;
      }
    }

    // Invoking callbacks
    if (_isValid) {
      if (successCallback != null) successCallback();
    } else {
      if (errorCallback != null) errorCallback(_errorMessage);
    }
    return _isValid;
  }

  void setError(String message) {
    _isValid = false;
    _errorMessage = message;
  }

  Validator addErrorCallback(Function(String msg) callback) {
    errorCallback = callback;
    return this;
  }

  Validator addSuccessCallback(Function() callback) {
    successCallback = callback;
    return this;
  }

  Validator addRule(BaseRule rule) {
    rulesList.add(rule);
    return this;
  }

  /// Rules
  Validator nonEmpty(String errorMsg) {
    final rule = errorMsg == null ? NonEmptyRule() : NonEmptyRule(errorMsg: errorMsg);
    addRule(rule);
    return this;
  }

  Validator regex({String pattern, String errorMsg}) {
    var rule = errorMsg == null
        ? RegexRule(pattern: pattern)
        : RegexRule(pattern: pattern, errorMsg: errorMsg);

    addRule(rule);
    return this;
  }
}
