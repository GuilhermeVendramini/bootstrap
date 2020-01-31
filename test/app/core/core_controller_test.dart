import 'package:bootstrap/app/core/core_controller.dart';
import 'package:bootstrap/app/core/core_module.dart';
import 'package:bootstrap/app/shared/models/user_model.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  initModule(CoreModule());
  CoreController coreController;

  setUp(() {
    coreController = CoreModule.to.get<CoreController>();
  });

  group('[GROUP]: CoreController', () {
    test("isInstanceOf CoreController", () {
      expect(coreController, isInstanceOf<CoreController>());
    });

    test("loadCurrentUser()", () async {
      expect(await coreController.loadCurrentUser(), equals(true));
      expect(coreController.user, isInstanceOf<UserModel>());
    });
  });
}
