import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:designs/screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // En dispositivos antiguos puede que el modo light sea diferente a lo que queremos
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

    // Por tal motivo es mejor declarar los colores del status bar
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home_screen',
      routes: {
        'basic_design': (_) => BasicDesignScreen(),
        'scroll_design': (_) => ScrollDesignScreen(),
        'home_screen': (_) => HomeScreen(),
      },
    );
  }
}
