
import 'package:easy_validator/src/rules/all_uppercase_rule.dart';
import 'package:test/test.dart';

void main() {
  test('"Length should be less than or equal to "maxLength value"', () {
    final wrongResult = AllUppercaseRule().validate("Text lorem");
    expect(wrongResult, false);
    final goodResult = AllUppercaseRule().validate("TEXT");
    expect(goodResult, true);
  });
}
