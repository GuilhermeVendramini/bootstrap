import 'package:bootstrap/app/core/widgets/pages/not_found/core_not_found_page.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  testWidgets('Core NotFoundPage', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(CoreNotFoundPage()));
    final titleFinder = find.text('NotFound');
    expect(titleFinder, findsOneWidget);
  });
}
