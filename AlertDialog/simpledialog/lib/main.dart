import 'dart:async';
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

enum Answers{YES,NO,MAYBE}

class _MyHomePageState extends State<MyHomePage> {

  String _value = '';

  void _setValue(String value) => setState(() => _value = value);

  Future _askUser() async {
    switch(
    await showDialog(
        context: context,
        child: SimpleDialog(
          title: Text('Do you like Flutter?'),
          children: <Widget>[
            SimpleDialogOption(child: Text('Yes!!!'),onPressed: (){Navigator.pop(context, Answers.YES);},),
            SimpleDialogOption(child: Text('NO :('),onPressed: (){Navigator.pop(context, Answers.NO);},),
            SimpleDialogOption(child: Text('Maybe :|'),onPressed: (){Navigator.pop(context, Answers.MAYBE);},),
          ],
        )
    )
    ) {
      case Answers.YES:
        _setValue('Yes');
        break;
      case Answers.NO:
        _setValue('No');
        break;
      case Answers.MAYBE:
        _setValue('Maybe');
        break;
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Name here'),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(_value),
              RaisedButton(onPressed: _askUser, child: Text('Click me'),)
            ],
          ),
        )
      ),
    );
  }
}