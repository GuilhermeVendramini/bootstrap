import 'package:bootstrap/app/modules/auth/recovery_password/recovery_password_controller.dart';
import 'package:bootstrap/app/modules/auth/recovery_password/recovery_password_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class RecoveryPasswordModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => RecoveryPasswordController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => RecoveryPasswordPage()),
      ];

  static Inject get to => Inject<RecoveryPasswordModule>.of();
}
