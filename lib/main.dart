import 'package:autologic/screen/createUser/signup.dart';
import 'package:autologic/screen/login/login.dart';
import 'package:autologic/screen/splash/splashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AutoLogic24',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
