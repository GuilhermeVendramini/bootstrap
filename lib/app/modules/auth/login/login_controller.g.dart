// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginController on _LoginBase, Store {
  Computed<bool> _$emailPasswordValidatedComputed;

  @override
  bool get emailPasswordValidated => (_$emailPasswordValidatedComputed ??=
          Computed<bool>(() => super.emailPasswordValidated))
      .value;

  final _$signUpUserStatusAtom = Atom(name: '_LoginBase.signUpUserStatus');

  @override
  SignUpUserStatus get signUpUserStatus {
    _$signUpUserStatusAtom.context.enforceReadPolicy(_$signUpUserStatusAtom);
    _$signUpUserStatusAtom.reportObserved();
    return super.signUpUserStatus;
  }

  @override
  set signUpUserStatus(SignUpUserStatus value) {
    _$signUpUserStatusAtom.context.conditionallyRunInAction(() {
      super.signUpUserStatus = value;
      _$signUpUserStatusAtom.reportChanged();
    }, _$signUpUserStatusAtom, name: '${_$signUpUserStatusAtom.name}_set');
  }

  final _$emailAtom = Atom(name: '_LoginBase.email');

  @override
  String get email {
    _$emailAtom.context.enforceReadPolicy(_$emailAtom);
    _$emailAtom.reportObserved();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.context.conditionallyRunInAction(() {
      super.email = value;
      _$emailAtom.reportChanged();
    }, _$emailAtom, name: '${_$emailAtom.name}_set');
  }

  final _$passwordAtom = Atom(name: '_LoginBase.password');

  @override
  String get password {
    _$passwordAtom.context.enforceReadPolicy(_$passwordAtom);
    _$passwordAtom.reportObserved();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.context.conditionallyRunInAction(() {
      super.password = value;
      _$passwordAtom.reportChanged();
    }, _$passwordAtom, name: '${_$passwordAtom.name}_set');
  }

  final _$_LoginBaseActionController = ActionController(name: '_LoginBase');

  @override
  void onChangeEmail(String value) {
    final _$actionInfo = _$_LoginBaseActionController.startAction();
    try {
      return super.onChangeEmail(value);
    } finally {
      _$_LoginBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onChangePassword(String value) {
    final _$actionInfo = _$_LoginBaseActionController.startAction();
    try {
      return super.onChangePassword(value);
    } finally {
      _$_LoginBaseActionController.endAction(_$actionInfo);
    }
  }
}
