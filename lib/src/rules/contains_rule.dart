import 'base_rule.dart';

class ContainsRule extends BaseRule {
  ContainsRule({String target, String errorMsg}) {
    this.errorMsg = ("Should contain $target");
    this._target = target;
  }

  String _target;

  @override
  bool validate(String text) {
    if (text.isEmpty) return false;

    return text.contains(_target);
  }
}
