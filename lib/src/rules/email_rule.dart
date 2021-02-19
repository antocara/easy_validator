import '../extensions/string_extension.dart';
import 'base_rule.dart';

class EmailRule extends BaseRule {
  EmailRule({String errorMsg = "Invalid Email Adress!"})
      : super(errorMsg: errorMsg);

  @override
  bool validate(String text) {
    return text.regex(
        pattern:
            "^[a-zA-Z0-9.!#\$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*\$");
  }
}
