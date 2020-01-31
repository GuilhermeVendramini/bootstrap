import 'package:bootstrap/app/modules/auth/register/register_controller.dart';
import 'package:bootstrap/app/shared/utils/i18n/i18n_config.dart';
import 'package:bootstrap/app/shared/utils/validators/default_validator.dart';
import 'package:bootstrap/app/shared/widgets/buttons/default_raised_button.dart';
import 'package:bootstrap/app/shared/widgets/fields/default_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class RegisterForm extends StatelessWidget {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    final _registerController = Modular.get<RegisterController>();
    _registerController.formKey = _formKey;

    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          DefaultTextFormField(
            textInputType: TextInputType.text,
            hintText: i18nDefault.name.i18n,
            icon: Icons.person,
            onSaved: null,
            validator: DefaultValidator.isNotEmpty,
          ),
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
          DefaultTextFormField(
            obscureText: true,
            hintText: i18nDefault.registerConfirmPassword.i18n,
            icon: Icons.lock,
            onSaved: null,
            validator: (value) {
              return DefaultValidator.confirmPassword(
                  value, 'password');
            },
          ),
          SizedBox(
            height: 10.0,
          ),
          DefaultRaisedButton(
            text: i18nDefault.registerNewAccount.i18n,
            onPressed: (){},
          ),
        ],
      ),
    );
  }
}
