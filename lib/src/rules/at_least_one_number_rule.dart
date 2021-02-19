import '../extensions/string_extension.dart';
import 'base_rule.dart';

class AtLeastOneNumberRule extends BaseRule {
  AtLeastOneNumberRule(
      {String errorMsg = "At least one letter should be a number."})
      : super(errorMsg: errorMsg);

  @override
  bool validate(String text) {
    return text.regex(pattern: ".*\\d.*");
  }
}
