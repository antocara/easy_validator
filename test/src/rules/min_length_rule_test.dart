import 'package:easy_data_validator/easy_data_validator.dart';
import 'package:test/test.dart';

void main() {
  test('"Length should be greater than "minLength value"', () {
    final wrongResult = MinLengthRule(minLength: 4).validate("Tex");
    expect(wrongResult, false);
    final goodResult = MinLengthRule(minLength: 4).validate("text lorem");
    expect(goodResult, true);
  });
}
