import 'package:bootstrap/app/core/core_controller.dart';
import 'package:bootstrap/app/core/core_module.dart';
import 'package:bootstrap/app/core/core_widget.dart';
import 'package:bootstrap/app/shared/utils/i18n/i18n_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUpAll(() {
    Modular.init(CoreModule());
  });

  group("[GROUP]: CoreWidget", () {
    CoreController coreController;

    setUp(() {
      coreController = CoreModule.to.get<CoreController>();
    });

    testWidgets('SplashPage - Redirect when user is logged or not', (WidgetTester tester) async {
      Finder titleFinder;
      await tester.pumpWidget(
        buildTestableWidget(CoreWidget()),
      );
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
      await tester.pump(Duration(seconds: 3));
      titleFinder = find.text(i18nDefault.appName.i18n);
      expect(titleFinder, findsNWidgets(2));
      await tester.pump();

      if (coreController.user != null) {
        titleFinder = find.text(i18nDefault.home.i18n);
      } else {
        titleFinder = find.text(i18nDefault.login.i18n);
      }

      expect(titleFinder, findsOneWidget);
    });
  });
}
