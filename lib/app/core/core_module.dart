import 'package:bootstrap/app/core/core_controller.dart';
import 'package:bootstrap/app/core/core_widget.dart';
import 'package:bootstrap/app/core/widgets/pages/splash/core_splash_page.dart';
import 'package:bootstrap/app/modules/auth/login/login_module.dart';
import 'package:bootstrap/app/modules/auth/recovery_password/recovery_password_module.dart';
import 'package:bootstrap/app/modules/auth/register/register_module.dart';
import 'package:bootstrap/app/modules/home/home_module.dart';
import 'package:bootstrap/app/shared/utils/route_guards/authenticated_user_guard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CoreModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CoreController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => CoreSplashPage()),
        Router(
          '/home',
          module: HomeModule(),
          guards: [AuthenticatedUserGuard()],
        ),
        Router('/login', module: LoginModule()),
        Router('/register', module: RegisterModule()),
        Router('/recovery', module: RecoveryPasswordModule()),
      ];

  @override
  Widget get bootstrap => CoreWidget();

  static Inject get to => Inject<CoreModule>.of();
}
