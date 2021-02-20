import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:jiffy/jiffy.dart';

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
  DateTime dateTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Date Picker'),
      ),
      body: Container(
          padding: EdgeInsets.all(32.0),
          child: Center(
            child: Column(
              children: <Widget>[
                Container(
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 5.0),
                    child: FlatButton(
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        color: Colors.blueAccent,
                        textColor: Colors.white,
                        onPressed: () {
                          DatePicker.showDateTimePicker(context,
                              showTitleActions: true,
                              minTime: DateTime(2020, 1, 1),
                              maxTime: DateTime(2040, 12, 31),
                              theme: DatePickerTheme(
                                  headerColor: Colors.orange,
                                  backgroundColor: Colors.blue,
                                  itemStyle: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                  doneStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16)), onChanged: (date) {
                            //print('2change $date in time zone ' +
                            //    date.timeZoneOffset.inHours.toString());
                          }, onConfirm: (date) {
                            //print('2confirm $date');
                            setState(() {
                              dateTime = date;
                            });
                          },
                              currentTime: DateTime.now(),
                              locale: LocaleType.ar);
                        },
                        child: Text(
                          Jiffy(dateTime).yMMMMEEEEdjm,
                          //style: TextStyle(color: Colors.blue),
                        )),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
