import 'dart:core';
import 'package:flutter/material.dart';
import 'package:gcek/constants.dart';
import 'package:gcek/screens/checkuser.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gcek Attendance',
      theme: ThemeData(
        fontFamily: "Montserrat",
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context)
            .textTheme
            .apply(displayColor: kTextColor, fontFamily: 'Montserrat'),
        primarySwatch: Colors.blue,
      ),
      home: user(),
    );
  }
}
