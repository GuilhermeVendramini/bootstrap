import 'package:mobx/mobx.dart';

part 'core_controller.g.dart';

class CoreController = _CoreBase with _$CoreController;

abstract class _CoreBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
