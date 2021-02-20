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
      home: MyHomePage2(title: 'Flutter Demo Home Page'),
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
  int _value1 = 0;

  void _setValue1(int value) => setState(() => _value1 = value);

  Widget makeRadios() {
    List<Widget> list = List<Widget>();

    for (int i = 0; i < 3; i++) {
      list.add(Radio(
        value: i,
        groupValue: _value1,
        onChanged: _setValue1,
      ));
    }

    Column column = Column(
      children: list,
    );
    return column;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio buttons'),
      ),
      body: Container(
          padding: EdgeInsets.all(32.0),
          child: Center(
            child: Column(
              children: <Widget>[
                Text(
                  '${_value1}',
                  style: new TextStyle(
                      color: new Color.fromARGB(255, 117, 117, 117),
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold),
                ),
                makeRadios(),
              ],
            ),
          )),
    );
  }
}

class MyHomePage2 extends StatefulWidget {
  MyHomePage2({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePage2State createState() => _MyHomePage2State();
}

class _MyHomePage2State extends State<MyHomePage2> {

  int _value2 = 0;

  void _setValue2(int value) => setState(() => _value2 = value);

  Widget makeRadioTiles() {
    List<Widget> list = List<Widget>();

    for (int i = 0; i < 3; i++) {
      list.add(RadioListTile(
        value: i,
        groupValue: _value2,
        onChanged: _setValue2,
        activeColor: Colors.green,
        controlAffinity: ListTileControlAffinity.trailing,
        title: Text('Item: ${i}'),
        subtitle: Text('sub title'),
      ));
    }

    Column column = Column(
      children: list,
    );
    return column;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio buttons'),
      ),
      body: Container(
          padding: EdgeInsets.all(32.0),
          child: Center(
            child: Column(
              children: <Widget>[
                
                Text(
                  '${_value2}',
                  style: new TextStyle(
                      color: new Color.fromARGB(255, 117, 117, 117),
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold),
                ),

                makeRadioTiles(),
              ],
            ),
          )),
    );
  }
}
