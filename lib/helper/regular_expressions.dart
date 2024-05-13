class RegularExpressions {
  static bool oneLowercase(String strings) {
    RegExp regExp = RegExp(r'^(?=.*[a-z]).+$');

    return regExp.hasMatch(strings);
  }

  static bool oneUppercase(String strings) {
    RegExp regExp = RegExp(r'^(?=.*[A-Z]).+$');

    return regExp.hasMatch(strings);
  }

  static bool oneNumber(String strings) {
    RegExp regExp = RegExp(r'^(?=.*\d).+$');

    return regExp.hasMatch(strings);
  }

  static bool oneSymbol(String strings) {
    RegExp regExp = RegExp(r'^(?=.*[@#$_%^&+=!?/()*:;]).+$');

    return regExp.hasMatch(strings);
  }

  static bool minEightCharacter(String strings) {
    RegExp regExp = RegExp(r'^.{8,}$');

    return regExp.hasMatch(strings);
  }

  static bool minSixCharacter(String strings) {
    RegExp regExp = RegExp(r'^.{6,}$');

    return regExp.hasMatch(strings);
  }

  static bool emailValid(String email) {
    Pattern pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

    RegExp regex = RegExp(pattern as String);

    return regex.hasMatch(email);
  }
}