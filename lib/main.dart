import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fblog/screens/oprtion_screen.dart';
import 'package:fblog/screens/splash_screen.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: SplashScreen(),
    );
  }
}
