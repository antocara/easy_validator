import 'package:easy_validator/src/rules/all_lower_case_rule.dart';
import 'package:test/test.dart';

void main() {
  group("LowerCaseRule", () {
    test('All letters should be in lower case.', () {
      final error = AllLowerCaseRule().validate("TEXT");
      expect(error, false);
      final success = AllLowerCaseRule().validate("text");
      expect(success, true);
    });
  });
}
