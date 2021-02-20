import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

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
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<String> _checked = ["A", "B"];


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Grouped Buttons Example"),
      ),
      body: _body(),
    );
    //
  }

  Widget _body(){
    return ListView(
      children: <Widget>[

        //--------------------
        //SIMPLE USAGE EXAMPLE
        //--------------------

        //BASIC CHECKBOXGROUP
        Container(
          padding: const EdgeInsets.only(left: 14.0, top: 14.0),
          child: Text("Basic CheckboxGroup",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0
            ),
          ),
        ),

        CheckboxGroup(
          labels: <String>[
            "Sunday",
            "Monday",
            "Tuesday",
            "Wednesday",
            "Thursday",
            "Friday",
            "Saturday",
          ],
          disabled: [
            "Wednesday",
            "Friday"
          ],
          onChange: (bool isChecked, String label, int index) => print("isChecked: $isChecked   label: $label  index: $index"),
          onSelected: (List<String> checked) => print("checked: ${checked.toString()}"),
        ),



        //--------------------
        //CUSTOM USAGE EXAMPLE
        //--------------------

        ///CUSTOM CHECKBOX GROUP
        Container(
          padding: const EdgeInsets.only(left: 14.0, top: 14.0, bottom: 14.0),
          child: Text("Custom CheckboxGroup",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0
            ),
          ),
        ),

        CheckboxGroup(
          orientation: GroupedButtonsOrientation.HORIZONTAL,
          margin: const EdgeInsets.only(left: 12.0),
          onSelected: (List selected) => setState((){
            _checked = selected;
          }),
          labels: <String>[
            "A",
            "B",
          ],
          checked: _checked,
          itemBuilder: (Checkbox cb, Text txt, int i){
            return Column(
              children: <Widget>[
                Icon(Icons.location_on),
                cb,
                txt,
              ],
            );
          },
        ),





      ]
    );
  }

}

/*
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _rememberMeFlag = false;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('NonStopIO'),
      ),
      body: new Container(
        color: Colors.black45,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Container(
              margin: new EdgeInsets.symmetric(vertical: 5.0, horizontal: 35.0),
              color: Colors.white70,
              height: 50.0,
            ),
            new Container(
              margin: new EdgeInsets.symmetric(vertical: 5.0, horizontal: 35.0),
              color: Colors.white70,
              height: 50.0,
            ),
            new Container(
                margin: new EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Row(
                      children: <Widget>[
                        new GestureDetector(
                          child: new Row(
                            children: <Widget>[
                              new Checkbox(
                                value: _rememberMeFlag,
                                onChanged: (value) => setState(() {
                                      _rememberMeFlag = !_rememberMeFlag;
                                    }),
                              ),
                              new Text(
                                "Remember me",
                                style: new TextStyle(color: Colors.white70),
                              )
                            ],
                          ),
                          onTap: () => setState(() {
                                _rememberMeFlag = !_rememberMeFlag;
                              }),
                        ),
                      ],
                    ),
                    new Container(
                      margin: new EdgeInsets.only(right: 15.0),
                      child: new Text(
                        "Forgot password ?",
                        style: new TextStyle(color: Colors.white70),
                      ),
                    )
                  ],
                )),
            new Container(
              margin: new EdgeInsets.symmetric(vertical: 5.0, horizontal: 35.0),
              color: Colors.orange,
              height: 50.0,
            ),
          ],
        ),
      ), 
    );
  }
}


*/
/*
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _value1 = false;
  bool _value2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkbox'),
      ),
      body: Container(
          padding: EdgeInsets.all(32.0),
          child: Center(
            child: Column(
              children: <Widget>[
                Text('_value1: ${_value1}'),
                Checkbox(
                  value: _value1,
                  onChanged: (bool value) => setState(() => _value1 = value),
                ),
                CheckboxListTile(
                  value: _value2,
                  onChanged: (bool value) => setState(() => _value2 = value),
                  title: new Text('Faculty of KSA'),
                  controlAffinity: ListTileControlAffinity.leading,
                  subtitle: new Text('Student'),
                  secondary: new Icon(Icons.archive),
                  activeColor: Colors.red,
                ),
                Text('_value2: ${_value2}'),
              ],
            ),
          )),
    );
  }
}
*/