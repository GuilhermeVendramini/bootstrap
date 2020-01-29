import 'package:bootstrap/app/core/themes/core_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CoreWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Slidy',
      theme: CoreTheme.themeData,
      initialRoute: '/',
      onGenerateRoute: Modular.generateRoute,
    );
  }
}
