import 'package:easy_validator/src/rules/at_least_one_number_rule.dart';
import 'package:test/test.dart';

void main() {
  test('At least one letter should be a number', () {
    final wrongResult = AtLeastOneNumberRule().validate("t2xt");
    expect(wrongResult, true);
    final goodResult = AtLeastOneNumberRule().validate("TEXT");
    expect(goodResult, false);
  });
}
