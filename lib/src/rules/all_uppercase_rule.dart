import 'base_rule.dart';

class AllUppercaseRule extends BaseRule {
  AllUppercaseRule({String errorMsg = "All letters should be in upper case."})
      : super(errorMsg: errorMsg);

  @override
  bool validate(String text) {
    return text == text.toUpperCase();
  }
}
