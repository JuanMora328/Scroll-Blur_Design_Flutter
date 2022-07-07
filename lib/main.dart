import 'package:flutter/material.dart';

import 'package:disenos2/screens/home_screen.dart';
import 'package:disenos2/screens/scroll_design.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: 'scroll_design', 
      routes: {
        'scroll_design': (_) => ScrollScreen(),
        'home_screen': (_) => HomeScreen()
      },
  );
  }
}
