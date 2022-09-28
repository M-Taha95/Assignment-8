import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:myapp/Screens/add.dart';
import 'package:myapp/Screens/login.dart';
import 'package:myapp/Screens/signup.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool mydark = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 14, 52, 71),
      ),
      drawer: Drawer(
          backgroundColor: mydark ? Colors.grey.shade900 : Colors.grey.shade200,
          child: ListView(
            children: [
              Padding(padding: EdgeInsets.all(15)),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    child: Icon(
                      Icons.person,
                      size: 100,
                      color:
                          mydark ? Colors.grey.shade100 : Colors.grey.shade900,
                    ),
                    decoration: BoxDecoration(
                        color: mydark
                            ? Colors.grey.shade900
                            : Colors.grey.shade200,
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        boxShadow: [
                          BoxShadow(
                              color: mydark
                                  ? Colors.grey.shade100
                                  : Colors.grey.shade900,
                              offset: Offset(4, 4),
                              blurRadius: 15,
                              spreadRadius: 1),
                          BoxShadow(
                              color: mydark
                                  ? Colors.grey.shade100
                                  : Colors.grey.shade900,
                              offset: Offset(-4, -4),
                              blurRadius: 15,
                              spreadRadius: 1)
                        ]),
                  ),
                  Padding(padding: EdgeInsets.all(15))
                ],
              ),
              Container(
                child: ListTile(
                  leading: Icon(
                    Icons.mail,
                    color: mydark ? Colors.grey.shade100 : Colors.grey.shade900,
                  ),
                  title: Text(
                    "Email :",
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: "Pacifico",
                      color:
                          mydark ? Colors.grey.shade100 : Colors.grey.shade900,
                    ),
                  ),
                  subtitle: Text("mohammed@gmail.com",
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: "Pacifico",
                        color: mydark
                            ? Colors.grey.shade100
                            : Colors.grey.shade900,
                      )),
                ),
              ),
              Container(
                child: ListTile(
                  leading: Icon(
                    Icons.phone_iphone,
                    color: mydark ? Colors.grey.shade100 : Colors.grey.shade900,
                  ),
                  title: Text("Mobile Number :",
                      style: TextStyle(
                        fontFamily: "Pacifico",
                        fontSize: 15,
                        color: mydark
                            ? Colors.grey.shade100
                            : Colors.grey.shade900,
                      )),
                  subtitle: Text("962 78 888 888",
                      style: TextStyle(
                        fontFamily: "Pacifico",
                        fontSize: 15,
                        color: mydark
                            ? Colors.grey.shade100
                            : Colors.grey.shade900,
                      )),
                ),
              ),
              Container(
                child: ListTile(
                  leading: Icon(
                    Ionicons.logo_linkedin,
                    color: mydark ? Colors.grey.shade100 : Colors.grey.shade900,
                  ),
                  title: Text("LinkedIn Profile :",
                      style: TextStyle(
                        fontFamily: "Pacifico",
                        fontSize: 15,
                        color: mydark
                            ? Colors.grey.shade100
                            : Colors.grey.shade900,
                      )),
                  subtitle: Text("Mohammed @ CEO",
                      style: TextStyle(
                        fontFamily: "Pacifico",
                        fontSize: 15,
                        color: mydark
                            ? Colors.grey.shade100
                            : Colors.grey.shade900,
                      )),
                ),
              ),
              Padding(padding: EdgeInsets.all(20)),
              SwitchListTile(
                secondary: Icon(Icons.dark_mode),
                title: Text(
                  "Dark mood !",
                  style: TextStyle(
                    fontFamily: "Pacifico",
                  ),
                ),
                selected: true,
                value: mydark,
                onChanged: (value) {
                  setState(() {
                    mydark ? Colors.grey.shade900 : Colors.grey.shade300;
                    mydark = !mydark;
                  });
                },
              )
            ],
          )),
      floatingActionButton: Builder(
        builder: (context) {
          return FloatingActionButton(
            child: Icon(
              Icons.skip_next,
              color: mydark ? Colors.grey.shade900 : Colors.grey.shade300,
            ),
            onPressed: () {
              setState(() {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Add();
                  },
                ));
                Scaffold.of(context).openDrawer();
              });
            },
          );
        },
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return logIn();
                    },
                  ));
                },
                child: Text(
                  "login",
                  style: TextStyle(fontFamily: "Pacifico"),
                )),
            ElevatedButton(
                style: ElevatedButton.styleFrom(),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Signup();
                    },
                  ));
                },
                child: Text(
                  "Sign up",
                  style: TextStyle(fontFamily: "Pacifico"),
                ))
          ]),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://cdn.pixabay.com/photo/2014/12/22/00/07/tree-576847_1280.png"))),
        ),
      ),
    );
  }
}
