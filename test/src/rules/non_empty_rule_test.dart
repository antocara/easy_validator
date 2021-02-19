import 'package:easy_validator/src/rules/non_empty_rule.dart';
import 'package:test/test.dart';

void main() {
  test("Can't be empty!", () {
    final wrongResult = NonEmptyRule().validate("");
    expect(wrongResult, false);
    final newWrongResult = NonEmptyRule().validate(" ");
    expect(newWrongResult, false);
    final goodResult = NonEmptyRule().validate("text");
    expect(goodResult, true);
  });
}
