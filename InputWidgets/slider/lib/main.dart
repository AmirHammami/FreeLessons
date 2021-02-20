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
  double _value = 0.0;
  //void _setvalue(double newvalue) => setState(() => _value = newvalue);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(
                'Value: ${(_value).round()}',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black87,
                ),
              ),
              /*Slider(
                value: _value,
                onChanged: (double newvalue) =>
                    setState(() => _value = newvalue),
                //Slider(value: _value, onChanged: _setvalue),
              ),
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  activeTrackColor: Colors.red[700],
                  inactiveTrackColor: Colors.red[100],
                  trackShape: RectangularSliderTrackShape(),
                  trackHeight: 4.0,
                  thumbColor: Colors.redAccent,
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
                  overlayColor: Colors.red.withAlpha(32),
                  overlayShape: RoundSliderOverlayShape(overlayRadius: 28.0),
                ),
                child: Slider(
                  value: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value;
                    });
                  },
                ),
              ),*/SliderTheme(
    data: SliderTheme.of(context).copyWith(
    activeTrackColor: Colors.white,
    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
    overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
    ),
    child: Slider(
             value: _value,
             min: 0.0,
             max: 220.0,
             activeColor: Colors.white,
             inactiveColor: Color(0xFF8D8E98),
             onChanged: (double newValue) {
                 setState(() {
                        _value = newValue;
                      });
                    },
                  ),
                ),
          
            ],
          ),
        ),
      ),
    );
  }
}
