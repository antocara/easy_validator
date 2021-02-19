import 'base_rule.dart';

class NonEmptyRule extends BaseRule {
  NonEmptyRule({String errorMsg = "Can't be empty!"})
      : super(errorMsg: errorMsg);

  @override
  bool validate(String text) {
    final newText = text.replaceAll(" ", "");
    return newText.isNotEmpty;
  }
}
