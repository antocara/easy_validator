
import 'package:easy_data_validator/easy_data_validator.dart';
import 'package:test/test.dart';

void main() {
  test('Should contain at least 1 special characters', () {
    final wrongResult = AtLeastOneSpecialCharacterRule().validate("t#xt");
    expect(wrongResult, true);
    final goodResult = AtLeastOneSpecialCharacterRule().validate("TEXT");
    expect(goodResult, false);
  });
}
