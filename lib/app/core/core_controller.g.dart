// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'core_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CoreController on _CoreBase, Store {
  final _$userAtom = Atom(name: '_CoreBase.user');

  @override
  UserModel get user {
    _$userAtom.context.enforceReadPolicy(_$userAtom);
    _$userAtom.reportObserved();
    return super.user;
  }

  @override
  set user(UserModel value) {
    _$userAtom.context.conditionallyRunInAction(() {
      super.user = value;
      _$userAtom.reportChanged();
    }, _$userAtom, name: '${_$userAtom.name}_set');
  }

  final _$userLoadStatusAtom = Atom(name: '_CoreBase.userLoadStatus');

  @override
  UserLoadStatus get userLoadStatus {
    _$userLoadStatusAtom.context.enforceReadPolicy(_$userLoadStatusAtom);
    _$userLoadStatusAtom.reportObserved();
    return super.userLoadStatus;
  }

  @override
  set userLoadStatus(UserLoadStatus value) {
    _$userLoadStatusAtom.context.conditionallyRunInAction(() {
      super.userLoadStatus = value;
      _$userLoadStatusAtom.reportChanged();
    }, _$userLoadStatusAtom, name: '${_$userLoadStatusAtom.name}_set');
  }

  final _$loadCurrentUserAsyncAction = AsyncAction('loadCurrentUser');

  @override
  Future<bool> loadCurrentUser() {
    return _$loadCurrentUserAsyncAction.run(() => super.loadCurrentUser());
  }
}
