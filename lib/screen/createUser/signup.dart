import 'package:autologic/constants/constants.dart';
import 'package:autologic/services/Apiservices.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  late bool _loading = false;
  TextEditingController emailtext = TextEditingController();
  TextEditingController passwordtext = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController mobile = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20.0,
              ),
              Image.asset(
                logo,
                width: 280.0,
                height: 250,
              ),
              const SizedBox(
                height: 1.0,
              ),
              Text(
                "Login",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              TextField(
                controller: name,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                  hintText: 'Enter Your Name',
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              TextField(
                controller: mobile,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Mobile No',
                  hintText: 'Enter Your Phone number',
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              TextField(
                controller: emailtext,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  hintText: 'Enter Your Email',
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              TextField(
                controller: passwordtext,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  hintText: 'Enter Your Password',
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              _loading
                  ? loading
                  : ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.red),
                        padding: MaterialStateProperty.all(
                          EdgeInsets.only(
                            left: 105.0,
                            right: 105.0,
                            top: 20.0,
                            bottom: 20.0,
                          ),
                        ),
                      ),
                      onPressed: () async {
                        print(emailtext.text);
                        print(passwordtext.text);
                        setState(() {
                          _loading = true;
                        });
                        var result = await ApiServices.createUser(
                          name: name.text,
                          mobile: mobile.text,
                          email: emailtext.text,
                          password: passwordtext.text,
                        );
                        print(result);
                        setState(() {
                          _loading = false;
                        });
                        // LoginData data = await ApiServices.getUser(
                        //     emailtext.text, passwordtext.text);
                        // print(data.jwt);
                        // if (data.jwt == null) {
                        //   setState(() {
                        //     _loading = false;
                        //     ScaffoldMessenger.of(context).showSnackBar(
                        //       SnackBar(
                        //         content: Text("Please try again"),
                        //       ),
                        //     );
                        //   });
                        // } else {
                        //   setState(() {
                        //     _loading = false;
                        //     Navigator.pushReplacement(context,
                        //         MaterialPageRoute(builder: (_) => Home()));
                        //   });
                        // }
                      },
                      child: Text("SignUp"),
                    )
            ],
          ),
        )),
      ),
    );
  }
}
