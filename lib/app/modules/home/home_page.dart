import 'package:bootstrap/app/shared/utils/i18n/i18n_default.dart';
import 'package:bootstrap/app/shared/utils/i18n/locations/en-US.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.home .i18n),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
