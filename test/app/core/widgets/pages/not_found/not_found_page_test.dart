import 'package:bootstrap/app/core/widgets/pages/not_found/not_found_page.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  testWidgets('NotFoundPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(NotFoundPage()));
    final titleFinder = find.text('NotFound');
    expect(titleFinder, findsOneWidget);
  });
}
