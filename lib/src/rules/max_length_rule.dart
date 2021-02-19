import 'base_rule.dart';

class MaxLengthRule extends BaseRule {
  MaxLengthRule({int maxLength, String errorMsg}) {
    this.errorMsg = ("Length should be less than or equal to $maxLength");
    this._maxLength = maxLength;
  }

  int _maxLength;

  @override
  bool validate(String text) {
    return text.length <= _maxLength;
  }
}
