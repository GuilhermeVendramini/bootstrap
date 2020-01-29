import 'package:bootstrap/app/shared/utils/i18n/locations/en-US.dart';
import 'package:bootstrap/app/shared/utils/i18n/i18n_default.dart';

class DefaultValidator {
  DefaultValidator._();

  static String isNotEmpty(String value) {
    if (value.isEmpty) {
      return Strings.valIsNotEmpty .i18n;
    }

    return null;
  }

  static String isEmail(String value) {
    String valueValidate = isNotEmpty(value);

    if (valueValidate != null) {
      return valueValidate;
    }

    if (value.contains("@") == false) {
      return Strings.valEmail .i18n;
    }

    return null;
  }

  static String password(String value) {
    String valueValidate = isNotEmpty(value);

    if (valueValidate != null) {
      return valueValidate;
    }

    if (value.length < 8) {
      return Strings.valMinLength .i18n;
    }

    return null;
  }

  static String confirmPassword(String value, String firstValue) {
    String passwordValidate = password(value);

    if (passwordValidate != null) {
      return passwordValidate;
    }

    if (value != firstValue) {
      return Strings.valPasswordNotConfirm .i18n;
    }

    return null;
  }
}