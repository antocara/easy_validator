import 'package:easy_data_validator/easy_data_validator.dart';
import 'package:test/test.dart';

void main() {
  test("Should not contain any alphabet characters! ", () {
    final wrongResult = OnlyNumbersRule().validate("Tex");
    expect(wrongResult, false);
    final goodResult = OnlyNumbersRule().validate("1234567");
    expect(goodResult, true);
  });
}
