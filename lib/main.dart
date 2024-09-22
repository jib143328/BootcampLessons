import 'package:flutter/material.dart';
import 'package:state_managment/view/screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     locale: Locale('ar'),

      home: Directionality(child: HomeScreen()
      ,textDirection: TextDirection.rtl,)
      ,
      theme: ThemeData(useMaterial3: false),
    );
  }
}
