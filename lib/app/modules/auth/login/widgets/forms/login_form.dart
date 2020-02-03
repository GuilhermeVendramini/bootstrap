import 'package:bootstrap/app/core/core_controller.dart';
import 'package:bootstrap/app/modules/auth/login/login_controller.dart';
import 'package:bootstrap/app/shared/models/user_model.dart';
import 'package:bootstrap/app/shared/utils/i18n/i18n_config.dart';
import 'package:bootstrap/app/shared/utils/validators/default_validator.dart';
import 'package:bootstrap/app/shared/widgets/buttons/default_raised_button.dart';
import 'package:bootstrap/app/shared/widgets/fields/default_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  CoreController _coreController;
  LoginController _loginController;

  void _formSubmit() async {
    UserModel user = await _loginController.loginWithEmailPassword();
    if (user != null) {
      _coreController.currentUser = user;
      Modular.to.pushReplacementNamed('/home');
    }
  }

  @override
  Widget build(BuildContext context) {
    _coreController = Modular.get<CoreController>();
    _loginController = Modular.get<LoginController>();
    _loginController.formKey = _formKey;

    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          DefaultTextFormField(
            textInputType: TextInputType.emailAddress,
            hintText: i18nDefault.email.i18n,
            icon: Icons.email,
            validator: DefaultValidator.isEmail,
            onChanged: _loginController.onChangeEmail,
          ),
          DefaultTextFormField(
            obscureText: true,
            hintText: i18nDefault.password.i18n,
            icon: Icons.lock,
            validator: DefaultValidator.password,
            onChanged: _loginController.onChangePassword,
          ),
          SizedBox(
            height: 10.0,
          ),
          Observer(builder: (_) {
            if (_loginController.signInUserStatus == SignInUserStatus.LOADING) {
              return CircularProgressIndicator();
            } else {
              return DefaultRaisedButton(
                text: i18nDefault.login.i18n,
                onPressed: _loginController.emailPasswordValidated
                    ? _formSubmit
                    : null,
              );
            }
          }),
        ],
      ),
    );
  }
}
