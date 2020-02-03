import 'package:bootstrap/app/repositories/firebase/firebase_user_repository.dart';
import 'package:bootstrap/app/shared/models/user_model.dart';
import 'package:bootstrap/app/shared/utils/validators/default_validator.dart';
import 'package:flutter/services.dart';
import 'package:mobx/mobx.dart';

part 'login_controller.g.dart';

enum SignInUserStatus { IDLE, LOADING, DONE, ERROR }

class LoginController = _LoginBase with _$LoginController;

abstract class _LoginBase with Store {
  var formKey;
  FirebaseUserRepository _userRepository = FirebaseUserRepository();
  UserModel currentUser;

  @observable
  SignInUserStatus signInUserStatus = SignInUserStatus.IDLE;

  @observable
  String email = '';

  @observable
  String password = '';

  @observable
  String messageStatus = '';

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
        signInUserStatus = SignInUserStatus.LOADING;
        _form.save();
        currentUser = await _userRepository.signInWithEmailPassword(
            email: email, password: password);
        signInUserStatus = SignInUserStatus.DONE;
        if (currentUser != null) {
          return currentUser;
        }
      }
    } on PlatformException catch (e) {
      messageStatus = e.message;
      signInUserStatus = SignInUserStatus.ERROR;
    }

    return null;
  }
}
