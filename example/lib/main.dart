import 'package:easy_data_validator/easy_data_validator.dart';

void main() {
  final isValid = Validator(text: "email@gmail.com")
      .addRule(NonEmptyRule())
      .addRule(NonNumbersRule())
      .addRule(EmailRule())
      .check();

  print("isValid => $isValid");

  final isValidPassword = Validator(text: "Passw0rd#Suc2021")
      .addRule(NonEmptyRule())
      .addRule(MinLengthRule(minLength: 8))
      .addRule(AtLeastOneUppercaseRule())
      .addRule(AtLeastOneSpecialCharacterRule())
      .addRule(AtLeastOneNumberRule())
      .addErrorCallback((msg) => print(msg))
      .addSuccessCallback(() => print("validation successful"))
      .check();

  print("isValidPassword => $isValidPassword");

  final wrongPassword = Validator(text: "Passw0rdSuc2021")
      .addRule(NonEmptyRule())
      .addRule(MinLengthRule(minLength: 8))
      .addRule(AtLeastOneUppercaseRule())
      .addRule(AtLeastOneSpecialCharacterRule())
      .addRule(AtLeastOneNumberRule())
      .addErrorCallback((msg) => print(msg))
      .addSuccessCallback(() => print("validation successful"))
      .check();

  print("wrongPassword => $wrongPassword");
}
