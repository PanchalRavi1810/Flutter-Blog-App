import 'package:flutter/material.dart';
import 'package:fblog/components/round_button.dart';
import 'package:fblog/screens/login.dart';
import 'package:fblog/screens/signin.dart';

class OptionScreen extends StatefulWidget {
  const OptionScreen({Key? key}) : super(key: key);

  @override
  _OptionScreenState createState() => _OptionScreenState();
}

class _OptionScreenState extends State<OptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(image: AssetImage('images/s.png')),
              SizedBox(
                height: 25,
              ),
              RoundButton(
                title: 'Login',
                onPress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
              ),
              SizedBox(
                height: 25,
              ),
              RoundButton(
                title: 'Register',
                onPress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Signin()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
