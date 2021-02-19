
import '../extensions/string_extension.dart';
import 'base_rule.dart';
import 'credit_cards_patterns.dart';

class CreditCardWithSpacesRule extends BaseRule {
  CreditCardWithSpacesRule({String errorMsg = "Invalid Credit Card Number!"})
      : super(errorMsg: errorMsg);

  @override
  bool validate(String text) {
    final cardPatterns = CreditCardPatterns.patterns;

    // remove all spaces
    final newText = text.replaceAll(" ", "");
    for (var pattern in cardPatterns) {
      final isCard = newText.regex(pattern: pattern);
      if (isCard) return true;
    }
    return false;
  }
}
