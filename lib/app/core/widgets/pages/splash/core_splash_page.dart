import 'package:bootstrap/app/core/core_controller.dart';
import 'package:bootstrap/app/shared/utils/i18n/i18n_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:i18n_extension/i18n_widget.dart';

class CoreSplashPage extends StatefulWidget {
  @override
  _CoreSplashPageState createState() => _CoreSplashPageState();
}

class _CoreSplashPageState extends State<CoreSplashPage> {
  CoreController _coreController;

  @override
  void initState() {
    _coreController = Modular.get<CoreController>();
    _coreController.loadCurrentUser().then((_) {
      if (_coreController.currentUser != null) {
        Modular.to.pushReplacementNamed('/home');
      } else {
        Modular.to.pushReplacementNamed('/login');
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return I18n(
      child: Scaffold(
        appBar: AppBar(
          title: Text(i18nDefault.appName.i18n),
        ),
        body: Center(
          child: Observer(
            builder: (_) {
              switch (_coreController.userLoadStatus) {
                case UserLoadStatus.LOADING:
                  return CircularProgressIndicator();
                  break;
                case UserLoadStatus.ERROR:
                  return Text(_coreController.messageStatus);
                  break;
                case UserLoadStatus.DONE:
                case UserLoadStatus.IDLE:
                default:
                  return Text(i18nDefault.appName.i18n);
                  break;
              }
            },
          ),
        ),
      ),
    );
  }
}
