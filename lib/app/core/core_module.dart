import 'package:bootstrap/app/core/core_controller.dart';
import 'package:bootstrap/app/core/core_widget.dart';
import 'package:bootstrap/app/modules/auth/login/login_module.dart';
import 'package:bootstrap/app/modules/home/home_module.dart';
import 'package:bootstrap/app/modules/splash/splash_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CoreModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CoreController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', module: SplashModule()),
        Router('/home', module: HomeModule()),
        Router('/login', module: LoginModule()),
      ];

  @override
  Widget get bootstrap => CoreWidget();

  static Inject get to => Inject<CoreModule>.of();
}
