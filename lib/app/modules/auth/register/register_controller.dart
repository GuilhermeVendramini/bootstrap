import 'package:mobx/mobx.dart';

part 'register_controller.g.dart';

class RegisterController = _RegisterBase with _$RegisterController;

abstract class _RegisterBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
