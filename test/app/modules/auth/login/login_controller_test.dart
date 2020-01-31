import 'package:bootstrap/app/modules/auth/login/login_controller.dart';
import 'package:bootstrap/app/modules/auth/login/login_module.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  initModule(LoginModule());
  LoginController login;

  setUp(() {
    login = LoginModule.to.get<LoginController>();
  });

  group('LoginController Test', () {
    test("isInstanceOf LoginController", () {
      expect(login, isInstanceOf<LoginController>());
    });
  });
}
