import 'package:bootstrap/app/modules/auth/login/login_controller.dart';
import 'package:bootstrap/app/shared/utils/i18n/i18n_config.dart';
import 'package:bootstrap/app/shared/utils/validators/default_validator.dart';
import 'package:bootstrap/app/shared/widgets/buttons/default_raised_button.dart';
import 'package:bootstrap/app/shared/widgets/fields/default_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginForm extends StatelessWidget {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    final _loginController = Modular.get<LoginController>();
    _loginController.formKey = _formKey;

    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          DefaultTextFormField(
            textInputType: TextInputType.emailAddress,
            hintText: i18nDefault.email.i18n,
            icon: Icons.email,
            onSaved: null,
            validator: DefaultValidator.isEmail,
          ),
          DefaultTextFormField(
            obscureText: true,
            hintText: i18nDefault.password.i18n,
            icon: Icons.lock,
            onSaved: null,
            validator: DefaultValidator.password,
          ),
          SizedBox(
            height: 10.0,
          ),
          DefaultRaisedButton(
            text: i18nDefault.login.i18n,
            onPressed: (){},
          ),
        ],
      ),
    );
  }
}
