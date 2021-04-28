import 'package:day2/views/pages/ToDoList.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ToDoList(),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              width: 150,
              height: 150,
              child: Image(image: AssetImage('images/flutter.png'))),
          Container(
            margin: EdgeInsets.only(left: 50, right: 50, top: 30),
            child: TextFormField(
              decoration: InputDecoration(hintText: "Email"),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 50, right: 50, top: 30),
            child: TextFormField(
              decoration: InputDecoration(hintText: "Password"),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 50, right: 50, top: 30),
            child: MaterialButton(
              color: Colors.blue,
              minWidth: MediaQuery.of(context).size.width,
              padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              onPressed: () {},
              child: Text(
                "Login",
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(30),
            child: Text(
              "Forget password? Noyawa. Tap me",
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 50, right: 50, top: 30),
            child: MaterialButton(
              color: Colors.grey,
              minWidth: MediaQuery.of(context).size.width,
              onPressed: () {},
              child: Text(
                "No Account? Sign up",
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
