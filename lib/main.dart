import 'package:design/src/pages/basico_page.dart';
import 'package:design/src/pages/botones_page.dart';
import 'package:design/src/pages/scroll_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //para cambiar las barras del sistema, dark hace que las letras se vuelvan negro y light que se vuelvan blanco
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Color.fromRGBO(255, 255, 255, 0),
      statusBarBrightness: Brightness.dark,
      //systemNavigationBarColor: Colors.white,
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños',
      initialRoute: "botones",
      routes: {
        'basico': (BuildContext context) => BasicoPage(),
        'scroll': (BuildContext context) => ScrollPage(),
        'botones': (BuildContext context) => BotonesPage(),
      },
    );
  }
}
