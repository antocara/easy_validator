
import 'package:easy_validator/src/rules/email_rule.dart';
import 'package:test/test.dart';

void main() {
  test('Email Adress!', () {
    List<String> emails = [
      "email@example.com",
      "firstname.lastname@example.com",
      "email@subdomain.example.com",
      "firstname+lastname@example.com",
      "email@123.123.123.123",
      "1234567890@example.com",
      "email@example-one.com",
      "_______@example.com",
      "email@example.name",
      "email@example.museum",
      "email@example.co.jp",
      "firstname-lastname@example.com"
    ];

    for (var email in emails) {
      final success = EmailRule().validate(email);
      expect(success, true);
    }

    List<String> wrongEmails = [
      "plainaddress",
      "#@%^%#\$@#\$@#.com",
      "@example.com",
      "Joe Smith <email@example.com>",
      "email.example.com",
      "あいうえお@example.com",
      "email@example.com (Joe Smith)",
      "email@example..com"
    ];
    for (var email in wrongEmails) {
      final error = EmailRule().validate(email);
      expect(error, false);
    }
  });
}
