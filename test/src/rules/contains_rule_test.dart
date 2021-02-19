import 'package:easy_data_validator/easy_data_validator.dart';
import 'package:test/test.dart';

void main() {
  test('Should contain "target" value', () {
    final success = ContainsRule(target: "target").validate("TEXT target");
    expect(success, true);
    final error = ContainsRule(target: "target").validate("text");
    expect(error, false);
  });
}
