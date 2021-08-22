import 'package:autologic/constants/constants.dart';
import 'package:autologic/screen/login/login.dart';
import 'package:autologic/screen/select_Screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 8), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              logo,
              height: 350,
              width: 350,
            ),
            LottieBuilder.asset(
              "assets/bikejson.json",
              repeat: false,
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
