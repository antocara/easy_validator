
import 'package:easy_validator/src/rules/only_numbers_rule.dart';
import 'package:test/test.dart';

void main() {
  test("Should not contain any alphabet characters! ", () {
    final wrongResult = OnlyNumbersRule().validate("Tex");
    expect(wrongResult, false);
    final goodResult = OnlyNumbersRule().validate("1234567");
    expect(goodResult, true);
  });
}
