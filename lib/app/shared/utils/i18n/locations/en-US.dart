import 'package:bootstrap/app/shared/utils/i18n/i18n_translate.dart';

mixin Strings implements Translate {

  // Generic
  //static const String home = 'Home';

  // Validator
  static const String valIsNotEmpty = 'Can\'t be empty';
  static const String valMinLength = 'Can\'t be less than 8 caracteres';
  static const String valPasswordNotConfirm = 'Password don\'t match';
  static const String valEmail = 'Invalid email';

  static String get home => 'Home';
}