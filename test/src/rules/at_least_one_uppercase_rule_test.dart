import 'package:easy_validator/src/rules/at_least_one_uppercase_rule.dart';
import 'package:test/test.dart';

void main() {
  test('At least one letter should be in upper case', () {
    final wrongResult = AtLeastOneUppercaseRule().validate("tExt");
    expect(wrongResult, true);
    final goodResult = AtLeastOneUppercaseRule().validate("text");
    expect(goodResult, false);
  });
}
