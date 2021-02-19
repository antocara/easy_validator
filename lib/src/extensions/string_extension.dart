import 'dart:core';

import '../validator.dart';

extension StringExtension on String {
  Validator validator() {
    return Validator(text: this);
  }

  bool regex({String pattern, Function(String msg) callback}) {
    var validator = this.validator().regex(pattern: pattern);
    if (callback != null) {
      validator..addErrorCallback((msg) => msg);
    }
    return validator.check();
  }
}
