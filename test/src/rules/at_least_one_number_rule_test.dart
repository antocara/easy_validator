
import 'package:easy_data_validator/easy_data_validator.dart';
import 'package:test/test.dart';

void main() {
  test('At least one letter should be a number', () {
    final wrongResult = AtLeastOneNumberRule().validate("t2xt");
    expect(wrongResult, true);
    final goodResult = AtLeastOneNumberRule().validate("TEXT");
    expect(goodResult, false);
  });
}
