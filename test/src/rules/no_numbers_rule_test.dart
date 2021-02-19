import 'package:easy_validator/src/rules/no_numbers_rule.dart';
import 'package:test/test.dart';

void main() {
  test('At least one letter should be in upper case', () {
    final wrongResult = NonNumbersRule().validate("tExt");
    expect(wrongResult, true);
    final goodResult = NonNumbersRule().validate("t3ext");
    expect(goodResult, false);
  });
}
