import 'package:bootstrap/app/core/core_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  CoreController _coreController;

  @override
  void initState() {
    _coreController = Modular.get<CoreController>();
    _coreController.loadCurrentUser().then((result) {
      if (result && _coreController.user != null) {
        Modular.to.pushReplacementNamed('/home');
      } else {
        Modular.to.pushReplacementNamed('/login');
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Boostrap'),
      ),
      body: Center(
        child: Observer(
          builder: (_) {
            switch (_coreController.userLoadStatus) {
              case UserLoadStatus.LOADING:
                return CircularProgressIndicator();
                break;
              case UserLoadStatus.ERROR:
                return Text('Error');
                break;
              case UserLoadStatus.DONE:
              case UserLoadStatus.IDLE:
              default:
                return Text('Flutter Boostrap');
                break;
            }
          },
        ),
      ),
    );
  }
}
