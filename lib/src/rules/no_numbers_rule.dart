import '../extensions/string_extension.dart';
import 'base_rule.dart';

class NonNumbersRule extends BaseRule {
  NonNumbersRule({String errorMsg = "Should not contain any numbers!"})
      : super(errorMsg: errorMsg);

  @override
  bool validate(String text) {
    return !text.regex(pattern: ".*\\d.*");
  }
}
