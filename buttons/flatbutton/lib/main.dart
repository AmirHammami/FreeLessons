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
      home: MyHomePage(title: 'Flutter Circular Button Demo'),
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
  String _value = 'Welcome';

  void _onPressed() {
    setState(() {
      _value = new DateTime.now().toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
          padding: const EdgeInsets.all(32.0),
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 16.0,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  child: MaterialButton(
                    minWidth: 200.0,
                    height: 35,
                    color: Color(0xFF801E48),
                    child: new Text('Sign up',
                        style:
                            new TextStyle(fontSize: 16.0, color: Colors.white)),
                    onPressed: () {},
                  ),
                ),

                /*MaterialButton(
                  minWidth: 200.0,
                  height: 42.0,
                  onPressed: () {},
                  color: Colors.lightBlueAccent,
                  child: Text(
                    'Log in',
                    style: TextStyle(color: Colors.white),
                  ),
                ),*/
                /*Text(_value),
                SizedBox(
                  height: 16.0,
                ),
                RaisedButton(
                  onPressed: _onPressed,
                  child: new Text('RB Click me'),
                ),
                SizedBox(
                  height: 16.0,
                ),
                FlatButton(
                  color: Colors.blueAccent,
                  textColor: Colors.white,
                  onPressed: _onPressed,
                  child: Text('FB Click me'),
                ),*/
                SizedBox(
                  height: 16.0,
                ),
                /*Center(
                  child: SizedBox.fromSize(
                    size: Size(80, 80), // button width and height
                    child: ClipOval(
                      child: Material(
                        color: Colors.pink[300], // button color
                        child: InkWell(
                          splashColor: Colors.yellow, // splash color
                          onTap: () {}, // button pressed
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.linked_camera), // icon
                              Text("Picture"), // text
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),*/
                /*Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: Material(
                    borderRadius: BorderRadius.circular(
                        30.0), //Set this up for rounding corners.
                    shadowColor: Colors.lightBlueAccent.shade100,
                    child: MaterialButton(
                      minWidth: 200.0,
                      height: 42.0,
                      onPressed: () {},
                      color: Colors.lightBlueAccent,
                      child: Text(
                        'Log in',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),*/
              ],
            ),
          )),
    );
  }
}
