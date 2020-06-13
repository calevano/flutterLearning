import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterapp/src/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: Colors.white,
      // systemNavigationBarColor: Color.fromRGBO(55, 57, 84, 1.0),
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Learning',
      initialRoute: 'home',
      routes: {
        'home': (BuildContext context) => HomePage(),
      },
      theme: ThemeData(
        // primaryColor: Color.fromRGBO(55, 57, 84, 1.0),
        primaryColor: Colors.yellow[700],
        accentColor: Colors.yellow[700],
        fontFamily: 'Montserrat',
      ),
    );
  }
}
