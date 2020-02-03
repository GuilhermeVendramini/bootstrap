import 'package:bootstrap/app/repositories/hive/hive_user_instance.dart';
import 'package:bootstrap/app/repositories/hive/hive_user_repository.dart';
import 'package:bootstrap/app/shared/models/user_model.dart';
import 'package:mobx/mobx.dart';

part 'core_controller.g.dart';

enum UserLoadStatus { IDLE, LOADING, ERROR, DONE }

class CoreController = _CoreBase with _$CoreController;

abstract class _CoreBase with Store {
  @observable
  UserModel currentUser;

  @observable
  UserLoadStatus userLoadStatus = UserLoadStatus.IDLE;

  HiveUserRepository _hiveUserRepository = HiveUserInstance.repository;

  @action
  Future<bool> loadCurrentUser() async {
    print('loadCurrentUser');
    if (currentUser == null) {
      try {
        userLoadStatus = UserLoadStatus.LOADING;
        currentUser = await _hiveUserRepository.getCurrentUser();
        userLoadStatus = UserLoadStatus.DONE;
        return true;
      } catch (e) {
        userLoadStatus = UserLoadStatus.ERROR;
        throw e;
      }
    }
    return true;
  }
}
