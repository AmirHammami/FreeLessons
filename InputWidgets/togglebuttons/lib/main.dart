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

  List<bool> _selections = List.generate(3, (_) => false);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('ToggleButtons')),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:16.0),
              child: Center(
                child: ToggleButtons(
                  children: <Widget>[
                    Icon(Icons.camera),
                    Icon(Icons.airline_seat_individual_suite),
                    Icon(Icons.add_location),
                  ],
                  isSelected: _selections,
                  
                  onPressed: (int index) {
                    setState(() {
                      _selections[index] = !_selections[index];
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
