import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
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
  TextEditingController _user = TextEditingController();
  TextEditingController _pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Column and Row'),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text('Please Login'),
              Row(
                children: <Widget>[
                  Text('Username: '),
                  Expanded(
                      child: TextField(
                    controller: _user,
                  ))
                ],
              ),
              Row(
                children: <Widget>[
                  Text('Password: '),
                  Expanded(
                      child: TextField(
                    controller: _pass,
                    obscureText: true,
                  ))
                ],
              ),
              Padding(
                padding: EdgeInsets.all(32.0),
                child: RaisedButton(
                  onPressed: () => print('Login ${_user.text}'),
                  child: Text('Click me'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
