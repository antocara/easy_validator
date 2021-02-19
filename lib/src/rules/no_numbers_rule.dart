import 'base_rule.dart';
import '../extensions/string_extension.dart';

class NonNumbersRule extends BaseRule {
  NonNumbersRule({String errorMsg = "Should not contain any numbers!"}) : super(errorMsg: errorMsg);

  @override
  bool validate(String text) {
    return !text.regex(pattern: ".*\\d.*");
  }
}
