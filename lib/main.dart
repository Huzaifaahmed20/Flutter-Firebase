import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  int _counter = 0;

  void _incrementCounter() {
    _auth.createUserWithEmailAndPassword(
      email: 'hello@gmail.com',
      password: 'a password',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xffEB95B6),
        child: Icon(
          Icons.arrow_forward,
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 14,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: RichText(
                          text: TextSpan(
                              style: Theme.of(context)
                                  .textTheme
                                  .body1
                                  .copyWith(fontSize: 30),
                              children: [
                            TextSpan(
                              text: 'Hello ',
                            ),
                            TextSpan(
                                text: 'Beautiful,',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ])),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0, top: 10.0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                          'Enter you informations below \nor login with social account',
                          style: TextStyle(fontSize: 20)),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 30.0, right: 20.0, left: 30.0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintStyle: TextStyle(fontSize: 20),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          hintText: 'Email Address'),
                      onChanged: (value) {
                        print(value);
                      },
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 30.0, right: 20.0, left: 30.0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintStyle: TextStyle(fontSize: 20),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          hintText: 'Password'),
                      onChanged: (value) {
                        print(value);
                      },
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 30.0, right: 20.0, left: 30.0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintStyle: TextStyle(fontSize: 20),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          hintText: 'Password Again'),
                      onChanged: (value) {
                        print(value);
                      },
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, top: 20.0),
                        child: IconButton(
                          icon: Icon(FontAwesomeIcons.facebookF),
                          onPressed: () {},
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, top: 20.0),
                        child: IconButton(
                          icon: Icon(FontAwesomeIcons.googlePlusG),
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),

          Expanded(
            flex: 1,
            child: Container(
              //E9E9E9
              color: Color(0xffE9E9E9),
            ),
          )
          // Column(
          //   children: <Widget>[
          //     Container(
          //       height: 50,
          //       color: Colors.pink,
          //     ),
          //   ],
          // )
        ],
      ),
    );
  }
}
