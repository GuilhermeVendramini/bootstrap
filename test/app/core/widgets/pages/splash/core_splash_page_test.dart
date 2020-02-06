import 'package:bootstrap/app/core/core_controller.dart';
import 'package:bootstrap/app/core/core_module.dart';
import 'package:bootstrap/app/core/widgets/pages/splash/core_splash_page.dart';
import 'package:bootstrap/app/shared/utils/i18n/i18n_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  CoreController coreController;

  setUpAll(() {
    Modular.init(CoreModule());
    coreController = CoreModule.to.get<CoreController>();
  });

  testWidgets('Core Splash Page', (WidgetTester tester) async {
    await tester.pumpWidget(MainTestWidget());
    final titleFinder = find.text(i18nDefault.appName.i18n);
    expect(titleFinder, findsNWidgets(1));
    coreController.userLoadStatus = UserLoadStatus.LOADING;
    final circularProgressFinder = find.byType(CircularProgressIndicator);
    expect(circularProgressFinder, findsOneWidget);
  });
}

class MainTestWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter test',
      home: CoreSplashPage(),
    );
  }
}