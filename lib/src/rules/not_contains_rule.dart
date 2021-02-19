import 'base_rule.dart';

class NotContainsRule extends BaseRule {
  NotContainsRule({String target, String errorMsg}) {
    this.errorMsg = ("Should not contain $target");
    this._target = target;
  }

  String _target;

  @override
  bool validate(String text) {
    if (text.isEmpty) return false;

    return !text.contains(_target);
  }
}
