import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myapp/Screens/Home.dart';
import 'package:myapp/Screens/signup.dart';

class Add extends StatelessWidget {
  const Add({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Text(
            "Welcom",
            style: TextStyle(fontSize: 30, fontFamily: "Pacifico"),
          ),
        ));
  }
}
