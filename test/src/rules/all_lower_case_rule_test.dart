import 'package:easy_data_validator/easy_data_validator.dart';
import 'package:test/test.dart';

void main() {
  group("LowerCaseRule", () {
    test('All letters should be in lower case.', () {
      final error = AllLowerCaseRule().validate("TEXT");
      expect(error, false);
      final success = AllLowerCaseRule().validate("text");
      expect(success, true);
    });
  });
}
