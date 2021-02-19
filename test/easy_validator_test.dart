
import 'package:easy_validator/src/rules/all_uppercase_rule.dart';
import 'package:easy_validator/src/rules/at_least_one_lower_case_rule.dart';
import 'package:easy_validator/src/rules/no_numbers_rule.dart';
import 'package:easy_validator/src/validator.dart';
import 'package:test/test.dart';

void main() {
  group("some test", () {
    test('Should not contain any numbers!', () {
      final result = Validator(text: "text").addRule(NonNumbersRule()).check();

      expect(result, true);
    });

    test('Should fail and print error message', () {
      Validator(text: "t3ext")
          .addRule(NonNumbersRule(errorMsg: "Esto es un error"))
          .addErrorCallback((msg) => {expect("Esto es un error", msg)})
          .check();
    });
    test('Should not contain any numbers and contain at least one lowercase', () {
      final newValidator = Validator(text: "text")
          .addRule(NonNumbersRule())
          .addRule(AtLeastOneLowerCaseRule())
          .check();

      expect(newValidator, true);

      final newValidators = Validator(text: "TEXT")
          .addRule(NonNumbersRule())
          .addRule(AtLeastOneLowerCaseRule())
          .check();

      expect(newValidators, false);
    });

    test('Should not contain any numbers and all uppercase', () {
      final successValidator =
          Validator(text: "TEXT").addRule(NonNumbersRule()).addRule(AllUppercaseRule()).check();

      expect(successValidator, true);

      final wrongValidator =
          Validator(text: "TEXtO2").addRule(NonNumbersRule()).addRule(AllUppercaseRule()).check();

      expect(wrongValidator, false);
    });
  });
}
