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
  List<BottomNavigationBarItem> _items;
  String _value = '';
  int _index = 0;

  @override
  void initState() {
    _items = List();
    _items.add(
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')));
    _items.add(BottomNavigationBarItem(
        icon: Icon(Icons.search), title: Text('Search')));
    _items.add(
        BottomNavigationBarItem(icon: Icon(Icons.add), title: Text('Add')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        //`true` if you want Flutter to automatically add Back Button when needed,
        //or `false` if you want to force your own back button every where
        title: Text('Bottom Navigation Bar'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
      body: Column(
        children: [
          TextField(),
          Expanded(
            child: GridView.count(
              crossAxisCount: 4,
              children: new List<Widget>.generate(32, (index) {
                return new GridTile(
                  child: new Card(
                      color: Colors.blue.shade200,
                      child: new Center(
                        child: new Text('tile $index'),
                      )),
                );
              }),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: _items,
        fixedColor: Colors.blue,
        currentIndex: _index,
        onTap: (int item) {
          setState(() {
            _index = item;
            _value = "Current value is: ${_index.toString()}";
          });
        },
      ),
    );
  }
}
