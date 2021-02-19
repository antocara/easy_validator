
import 'package:easy_validator/src/rules/at_least_one_special_character_rule.dart';
import 'package:test/test.dart';

void main() {
  test('Should contain at least 1 special characters', () {
    final wrongResult = AtLeastOneSpecialCharacterRule().validate("t#xt");
    expect(wrongResult, true);
    final goodResult = AtLeastOneSpecialCharacterRule().validate("TEXT");
    expect(goodResult, false);
  });
}
