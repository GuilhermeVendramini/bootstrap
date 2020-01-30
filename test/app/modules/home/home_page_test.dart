import 'package:bootstrap/app/shared/utils/i18n/i18n_config.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:bootstrap/app/modules/home/home_page.dart';

main() {
  testWidgets('HomePage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(HomePage()));
    final titleFinder = find.text(i18nDefault.home);
    expect(titleFinder, findsOneWidget);
  });
}
