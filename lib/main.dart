import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ichatu/global/color.dart';
import 'package:ichatu/screens/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'I Love U',
      theme: ThemeData(
        // primarySwatch: MaterialColor('0xFFAAD400')
        primarySwatch: Colors.green
        // primaryColor: Colors.green
      ),
      home: SplashScreen(),
    );
  }
}
