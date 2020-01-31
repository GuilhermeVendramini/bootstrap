import 'package:bootstrap/app/shared/utils/i18n/i18n_translate.dart';
import 'package:bootstrap/app/shared/utils/i18n/locales/en-US.dart' as enUS;
import 'package:bootstrap/app/shared/utils/i18n/locales/pt-BR.dart' as ptBR;
import 'package:i18n_extension/i18n_extension.dart';

final I18nTranslate _i18nEnUS = enUS.I18nStrings();
final I18nTranslate _i18nPtBR = ptBR.I18nStrings();
final I18nTranslate i18nDefault = _i18nEnUS;

extension Localization on String {
  static var t = Translations("en_us") +
      {
        "en_us": _i18nEnUS.appName,
        "pt_br": _i18nPtBR.appName,
      } +
      {
        "en_us": _i18nEnUS.home,
        "pt_br": _i18nPtBR.home,
      } +
      {
        "en_us": _i18nEnUS.valIsNotEmpty,
        "pt_br": _i18nPtBR.valIsNotEmpty,
      } +
      {
        "en_us": _i18nEnUS.valMinLength,
        "pt_br": _i18nPtBR.valMinLength,
      } +
      {
        "en_us": _i18nEnUS.valPasswordNotConfirm,
        "pt_br": _i18nPtBR.valPasswordNotConfirm,
      } +
      {
        "en_us": _i18nEnUS.valEmail,
        "pt_br": _i18nPtBR.valEmail,
      } +
      {
        "en_us": _i18nEnUS.login,
        "pt_br": _i18nPtBR.login,
      } +
      {
        "en_us": _i18nEnUS.register,
        "pt_br": _i18nPtBR.register,
      } +
      {
        "en_us": _i18nEnUS.email,
        "pt_br": _i18nPtBR.email,
      } +
      {
        "en_us": _i18nEnUS.password,
        "pt_br": _i18nPtBR.password,
      } +
      {
        "en_us": _i18nEnUS.loginForgotPassword,
        "pt_br": _i18nPtBR.loginForgotPassword,
      } +
      {
        "en_us": _i18nEnUS.loginSignUp,
        "pt_br": _i18nPtBR.loginSignUp,
      };

  String get i18n => localize(this, t);
}
