import 'base_rule.dart';
import '../extensions/string_extension.dart';

class NoSpecialCharacterRule extends BaseRule {
  NoSpecialCharacterRule({String errorMsg = "Should not contain any special characters"})
      : super(errorMsg: errorMsg);

  @override
  bool validate(String text) {
    if (text.isEmpty) return false;
    final noWhiteSpacesText = text.replaceAll(" ", "");
    return noWhiteSpacesText.regex(pattern: "^[a-zA-Z0-9]{4,10}\$" );//[A-Za-z0-9]+");
  }
}
