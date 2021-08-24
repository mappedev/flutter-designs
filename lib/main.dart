import 'package:flutter/material.dart';

import 'package:designs/screens/basic_design.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'basic_design': (_) => BasicDesignScreen(),
      },
      initialRoute: 'basic_design',
    );
  }
}
