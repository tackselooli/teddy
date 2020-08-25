import 'package:flutter/material.dart';
import 'package:whynot/screens/registry_screen.dart';
import './screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Travel UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Color(0xFF618BF7),
          accentColor: Color(0xFF393089),
          fontFamily: "Font1"
      ),

      home: Directionality(
        textDirection: TextDirection.rtl,
        child: RegistryScreen(
        ),
      ),
    );
  }
}