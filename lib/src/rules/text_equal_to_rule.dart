import 'base_rule.dart';

class TextEqualToRule extends BaseRule {
  TextEqualToRule({String target, String errorMsg}) {
    this.errorMsg = ("Should be equal to $target");
    this._target = target;
  }

  String _target;

  @override
  bool validate(String text) {
    if (text.isEmpty) return false;

    return text == _target;
  }
}
