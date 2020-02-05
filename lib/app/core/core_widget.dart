import 'package:bootstrap/app/core/themes/core_theme.dart';
import 'package:bootstrap/app/core/widgets/pages/splash/core_splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CoreWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Bootstrap',
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', "US"),
        const Locale('pt', "BR"),
      ],
      theme: CoreTheme.themeData,
      initialRoute: '/',
      onGenerateRoute: Modular.generateRoute,
      navigatorKey: Modular.navigatorKey,
      onUnknownRoute: (RouteSettings setting) {
        return MaterialPageRoute(
          builder: (context) => CoreSplashPage(),
        );
      },
    );
  }
}
