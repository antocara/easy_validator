import 'base_rule.dart';
import '../extensions/string_extension.dart';

class OnlyNumbersRule extends BaseRule {
  OnlyNumbersRule({String errorMsg = "Should not contain any alphabet characters!"})
      : super(errorMsg: errorMsg);


  @override
  bool validate(String text) {
    return text.regex(pattern: "^(0|[1-9][0-9]*)\$");
  }
}
