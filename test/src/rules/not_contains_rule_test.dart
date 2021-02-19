import 'package:easy_validator/src/rules/not_contains_rule.dart';
import 'package:test/test.dart';

void main() {
  test("Should not contain 'target value' ", () {
    final wrongResult =
        NotContainsRule(target: "target").validate("Tex# target");
    expect(wrongResult, false);
    final goodResult = NotContainsRule(target: "target").validate("text ");
    expect(goodResult, true);
  });
}
