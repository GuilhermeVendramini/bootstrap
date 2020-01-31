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

  testWidgets('CoreWidget', (WidgetTester tester) async {
    await tester.pumpWidget(
      buildTestableWidget(CoreWidget()),
    );
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
    await tester.pump(Duration(seconds: 3));
    final titleFinder = find.text(i18nDefault.appName.i18n);
    expect(titleFinder, findsNWidgets(2));
  });
}
