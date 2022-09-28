import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:myapp/Screens/Home.dart';
import 'package:myapp/Screens/add.dart';

class logIn extends StatefulWidget {
  const logIn({super.key});

  @override
  State<logIn> createState() => _logInState();
}

class _logInState extends State<logIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("log in page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // width: double.infinity,
              height: 800,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2017/06/14/08/20/map-of-the-world-2401458_1280.jpg"))),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 30,
                    child: Image(
                        image: NetworkImage(
                            "https://cdn.pixabay.com/photo/2017/02/23/13/05/avatar-2092113_1280.png")),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 120, 213, 123),
                                  width: 5)),
                          label: Text("Email"),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(35)),
                          prefixIcon: Icon(Icons.mail),
                          hintText: "Enter your email"),
                      maxLines: 1,
                      maxLength: 20,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 120, 213, 123),
                                  width: 5)),
                          label: Text("Password"),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(35)),
                          suffixIcon: Icon(Icons.visibility_off),
                          prefixIcon: Icon(Icons.lock),
                          hintText: "Enter your Password"),
                      maxLines: 1,
                      maxLength: 10,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 120, 213, 123),
                                  width: 5)),
                          label: Text("Password"),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(35)),
                          suffixIcon: Icon(Icons.visibility_off),
                          prefixIcon: Icon(Icons.lock),
                          hintText: "Confirm Password"),
                      maxLines: 1,
                      maxLength: 10,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    Text("يا أهلا وسهلا"),
                                    Icon(Icons.face)
                                  ],
                                ),
                              ),
                              actions: [
                                ElevatedButton(
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (context) {
                                          return Center(
                                              child:
                                                  CircularProgressIndicator());
                                        },
                                      );
                                    },
                                    child: Text("...انتظر قليلا من فضلك.")),
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(
                                        builder: (context) {
                                          return Home();
                                        },
                                      ));
                                    },
                                    child: Text("ليس لدي الوقت للإنتظار "))
                              ],
                            );
                          },
                        );
                      },
                      child: GestureDetector(child: Text("log in"))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
