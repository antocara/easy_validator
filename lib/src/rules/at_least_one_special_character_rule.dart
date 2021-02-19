import '../extensions/string_extension.dart';
import 'base_rule.dart';

class AtLeastOneSpecialCharacterRule extends BaseRule {
  AtLeastOneSpecialCharacterRule(
      {String errorMsg = "Should contain at least 1 special characters"})
      : super(errorMsg: errorMsg);

  @override
  bool validate(String text) {
    if (text.isEmpty) {
      return false;
    }
    return text.regex(pattern: "(?=.*?[#?!@\$%^&*-])");
  }
}
