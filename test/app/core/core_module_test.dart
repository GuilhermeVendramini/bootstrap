import 'package:bootstrap/app/core/core_module.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUpAll(() {
    Modular.init(CoreModule());
  });

  group("[GROUP]: Router", () {
    test('[TEST]: Get Router', () {
      expect(Modular.selectRoute("/"), isA<Router>());
      expect(Modular.selectRoute("/home"), isA<Router>());
      expect(Modular.selectRoute("/login"), isA<Router>());
    });
  });
}
