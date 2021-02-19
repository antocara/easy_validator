import '../extensions/string_extension.dart';
import 'base_rule.dart';
import 'credit_cards_patterns.dart';

class CreditCardRule extends BaseRule {
  CreditCardRule({String errorMsg = "Invalid Credit Card Number!"})
      : super(errorMsg: errorMsg);

  @override
  bool validate(String text) {
    final cardPatterns = CreditCardPatterns.patterns;

    for (var pattern in cardPatterns) {
      final isCard = text.regex(pattern: pattern);
      if (isCard) return true;
    }
    return false;
  }
}
