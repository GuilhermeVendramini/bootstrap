import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:bootstrap/app/core/core_controller.dart';
import 'package:bootstrap/app/core/core_module.dart';

void main() {
  initModule(CoreModule());
  CoreController coreController;

  setUp(() {
    coreController = CoreModule.to.get<CoreController>();
  });

  group('AppController Test', () {
    test("First Test", () {
      expect(coreController, isInstanceOf<CoreController>());
    });

    test("Set Value", () {
      expect(coreController.user, equals(null));
    });
  });
}
