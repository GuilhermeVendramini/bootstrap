import 'package:bootstrap/app/core/widgets/pages/splash/core_splash_page.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

main() {
  testWidgets('SplashPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(CoreSplashPage()));
    final titleFinder = find.text('Flutter Boostrap');
    expect(titleFinder, findsOneWidget);
  });
}
