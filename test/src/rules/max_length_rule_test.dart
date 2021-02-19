
import 'package:easy_data_validator/easy_data_validator.dart';
import 'package:test/test.dart';

void main() {
  test('"Length should be less than or equal to "minLength value"', () {
    final wrongResult = MaxLengthRule(maxLength: 4).validate("Text lorem");
    expect(wrongResult, false);
    final goodResult = MaxLengthRule(maxLength: 4).validate("text");
    expect(goodResult, true);
  });
}
