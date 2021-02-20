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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

enum Animals{Cat, Dog, Bird, Lizard, Fish}

class _MyHomePageState extends State<MyHomePage> {
  Animals _selected = Animals.Cat;
  String _value = 'Make a Selection';
  List<PopupMenuEntry<Animals>> _items = List<PopupMenuEntry<Animals>>();


  @override
  void initState() {
    for(Animals animal in Animals.values) {
      _items.add(PopupMenuItem(
          child: Text(_getDisplay(animal),),
          value: animal,
      ));
    }
  }

  void _onSelected(Animals animal) {
    setState((){
      _selected = animal;
      _value = 'You Selected ${_getDisplay(animal)}';
    });
  }

  String _getDisplay(Animals animal) {
    int index = animal.toString().indexOf('.');
    index++;
    return animal.toString().substring(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PopupMenuButton'),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(5.0),
                child: Text(_value),
              ),
              PopupMenuButton<Animals>(
                  child:  Icon(Icons.input),
                  initialValue: Animals.Cat,
                  onSelected: _onSelected,
                  itemBuilder: (BuildContext context) {
                    return _items;
                  }
              ),
            ],
          ),
        ),
      ),
    );
  }
}