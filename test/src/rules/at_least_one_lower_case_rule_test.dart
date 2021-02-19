import 'package:easy_data_validator/easy_data_validator.dart';
import 'package:test/test.dart';

void main() {
  test('At least one letter should be in lower case', () {
    final wrongResult = AtLeastOneLowerCaseRule().validate("text");
    expect(wrongResult, true);
    final goodResult = AtLeastOneLowerCaseRule().validate("TEXT");
    expect(goodResult, false);
  });
}
