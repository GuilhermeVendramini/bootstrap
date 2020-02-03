import 'package:bootstrap/app/repositories/firebase/firebase_user_instance.dart';
import 'package:bootstrap/app/repositories/firebase/firebase_user_repository.dart';
import 'package:bootstrap/app/shared/models/user_model.dart';
import 'package:bootstrap/app/shared/utils/validators/default_validator.dart';
import 'package:flutter/services.dart';
import 'package:mobx/mobx.dart';

part 'register_controller.g.dart';

enum RegisterUserStatus { IDLE, LOADING, DONE, ERROR }

class RegisterController = _RegisterBase with _$RegisterController;

abstract class _RegisterBase with Store {
  var formKey;

  FirebaseUserRepository _userRepository = FirebaseUserInstance.repository;
  UserModel currentUser;

  @observable
  RegisterUserStatus registerUserStatus = RegisterUserStatus.IDLE;

  @observable
  String email = '';

  @observable
  String password = '';

  @observable
  String confirmPassword = '';

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

  @action
  void onChangeConfirmPassword(String value) {
    confirmPassword = value.trim();
  }

  @computed
  bool get emailPasswordValidated {
    if (DefaultValidator.isEmail(email) == null &&
        DefaultValidator.password(password) == null &&
        DefaultValidator.confirmPassword(confirmPassword, password) == null)
      return true;
    return false;
  }

  Future<UserModel> registerWithEmailPassword() async {
    try {
      final _form = formKey.currentState;
      if (_form.validate()) {
        registerUserStatus = RegisterUserStatus.LOADING;
        _form.save();
        currentUser = await _userRepository.createUserWithEmailPassword(
            email: email, password: password);
        registerUserStatus = RegisterUserStatus.DONE;
        if (currentUser != null) {
          return currentUser;
        }
      }
    } on PlatformException catch (e) {
      messageStatus = e.message;
      registerUserStatus = RegisterUserStatus.ERROR;
    }

    return null;
  }
}
