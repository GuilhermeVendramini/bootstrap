import 'package:bootstrap/app/shared/models/user_model.dart';
import 'package:mobx/mobx.dart';

part 'core_controller.g.dart';

enum UserLoadStatus { IDLE, LOADING, ERROR, DONE }

class CoreController = _CoreBase with _$CoreController;

abstract class _CoreBase with Store {
  @observable
  UserModel user;

  @observable
  UserLoadStatus userLoadStatus = UserLoadStatus.IDLE;

  @action
  Future<bool> loadCurrentUser() async {
    print('loadCurrentUser');
    if (user == null) {
      try {
        userLoadStatus = UserLoadStatus.LOADING;
        await Future.delayed(Duration(seconds: 3)).then((value) {
          user = UserModel(name: 'Guilherme');
          userLoadStatus = UserLoadStatus.DONE;
        });
        return true;
      } catch (e) {
        userLoadStatus = UserLoadStatus.ERROR;
        throw e;
      }
    }
    return true;
  }
}
