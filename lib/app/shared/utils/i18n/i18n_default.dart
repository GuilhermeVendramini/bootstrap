import 'package:bootstrap/app/shared/utils/i18n/locations/en-US.dart' as enUS;
import 'package:bootstrap/app/shared/utils/i18n/locations/pt-BR.dart' as ptBR;
import 'package:i18n_extension/i18n_extension.dart';


final ptBrString = ptBR.Strings();

extension Localization on String {

  static var t = Translations("en_us") +
      {
        "en_us": enUS.Strings.home,
        "pt_br": ptBrString.home,
      } +
      {
        "en_us": enUS.Strings.valIsNotEmpty,
        "pt_br": ptBR.Strings.valIsNotEmpty,
      } +
      {
        "en_us": enUS.Strings.valMinLength,
        "pt_br": ptBR.Strings.valMinLength,
      } +
      {
        "en_us": enUS.Strings.valPasswordNotConfirm,
        "pt_br": ptBR.Strings.valPasswordNotConfirm,
      } +
      {
        "en_us": enUS.Strings.valEmail,
        "pt_br": ptBR.Strings.valEmail,
      };

  String get i18n => localize(this, t);

/*  String fill(List<Object> params) => localizeFill(this, params);

  String plural(int value) => localizePlural(value, this, t);

  String version(Object modifier) => localizeVersion(modifier, this, t);

  Map<String, String> allVersions() => localizeAllVersions(this, t);*/
}
