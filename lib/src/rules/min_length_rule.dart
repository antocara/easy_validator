import 'base_rule.dart';

class MinLengthRule extends BaseRule {
  MinLengthRule({int minLength, String errorMsg}) {
    this.errorMsg = ("Length should be greater than $minLength");
    this._minLength = minLength;
  }

  int _minLength;

  @override
  bool validate(String text) {
    return text.length >= _minLength;
  }
}
