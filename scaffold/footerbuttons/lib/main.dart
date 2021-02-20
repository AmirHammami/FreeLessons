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
  String _value = '';

  void _onClick(String value) => setState(() => _value = value);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Footer Buttons'),
      ),
      persistentFooterButtons: <Widget>[
        RaisedButton(
          elevation: 10.0,
          onPressed: () => _onClick('btn 1'),
          color: Colors.green,
          child: Icon(
            Icons.print,
            color: Colors.white,
          ),
        ),
        RaisedButton(
          elevation: 10.0,
          onPressed: () => _onClick('btn 1'),
          color: Colors.blueGrey,
          child: Icon(
            Icons.send,
            color: Colors.white,
          ),
        ),
        /*IconButton(
          icon: Icon(Icons.timer),
          onPressed: () => _onClick('Button 1'),
        ),
        IconButton(
          icon: Icon(Icons.people),
          onPressed: () => _onClick('Button 2'),
        ),
        IconButton(
          icon: Icon(Icons.map),
          onPressed: () => _onClick('Button 3'),
        ),*/
      ],
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(
                _value,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
