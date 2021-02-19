import 'base_rule.dart';

class AllLowerCaseRule extends BaseRule {
  AllLowerCaseRule({String errorMsg = "All letters should be in lower case."})
      : super(errorMsg: errorMsg);

  @override
  bool validate(String text) {
    return text == text.toLowerCase();
  }
}
