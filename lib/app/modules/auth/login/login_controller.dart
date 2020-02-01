import 'package:bootstrap/app/repositories/firebase/firebase_user_repository.dart';
import 'package:bootstrap/app/shared/models/user_model.dart';
import 'package:bootstrap/app/shared/utils/validators/default_validator.dart';
import 'package:mobx/mobx.dart';

part 'login_controller.g.dart';

enum SignUpUserStatus { IDLE, LOADING, DONE, ERROR }

class LoginController = _LoginBase with _$LoginController;

abstract class _LoginBase with Store {
  var formKey;
  FirebaseUserRepository _userRepository = FirebaseUserRepository();
  UserModel currentUser;

  @observable
  SignUpUserStatus signUpUserStatus = SignUpUserStatus.IDLE;

  @observable
  String email = '';

  @observable
  String password = '';

  @action
  void onChangeEmail(String value) {
    email = value.trim();
  }

  @action
  void onChangePassword(String value) {
    password = value.trim();
  }

  @computed
  bool get emailPasswordValidated {
    if (DefaultValidator.isEmail(email) == null &&
        DefaultValidator.password(password) == null) return true;
    return false;
  }

  Future<UserModel> loginWithEmailPassword() async {
    try {
      final _form = formKey.currentState;
      if (_form.validate()) {
        signUpUserStatus = SignUpUserStatus.LOADING;
        _form.save();
        currentUser = await _userRepository.signUpWithEmailPassword(
            email: email, password: password);
        signUpUserStatus = SignUpUserStatus.DONE;
        if (currentUser != null) {
          return currentUser;
        }
      }
    } catch (e) {
      print(e.toString());
      signUpUserStatus = SignUpUserStatus.ERROR;
    }

    return null;
  }
}
