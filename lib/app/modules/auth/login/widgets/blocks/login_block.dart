import 'package:bootstrap/app/modules/auth/login/widgets/forms/login_form.dart';
import 'package:bootstrap/app/shared/widgets/buttons/default_flat_button.dart';
import 'package:bootstrap/app/shared/widgets/buttons/default_outline_button.dart';
import 'package:flutter/material.dart';

class LoginBlock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          LoginForm(),
          SizedBox(
            height: 40.0,
          ),
          DefaultFlatButton(
            text: 'Forgot your password',
            onPressed: () {},
          ),
          SizedBox(
            height: 10.0,
          ),
          DefaultOutlineButton(
            text: 'Sign Up',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
