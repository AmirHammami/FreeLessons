import 'package:flutter/material.dart';
import 'package:awesome_card/awesome_card.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card'),
      ),
      /*body: Container(
        //height: 200.0,
        //width: double.maxFinite,
        padding: EdgeInsets.all(32.0),
        child:
            /*Card(
          shape: new RoundedRectangleBorder(
              side: new BorderSide(
                  color: Theme.of(context).accentColor, width: 3.0),
              borderRadius: BorderRadius.circular(20.0)),
          elevation: 10.0,
          child: Container(
            padding: EdgeInsets.all(32.0),
            child: Column(
              children: <Widget>[
                Text('Card 1'),
              ],
            ),
          ),
        ),*/
        CreditCard(
          cardNumber: "5450 7879 4864 7854",
          cardExpiry: "10/25",
          cardHolderName: "Card Holder",
          cvv: "456",
          bankName: "Axis Bank",
          cardType:
              CardType.masterCard, // Optional if you want to override Card Type
          showBackSide: true,
          frontBackground: CardBackgrounds.black,
          backBackground: CardBackgrounds.white,
          showShadow: true,
        ),
      ),*/

      body: Container(
        width: 200,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: Colors.pink,
          elevation: 10,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.account_box, size: 70),
                title:
                    Text('First Name', style: TextStyle(color: Colors.white)),
                subtitle: Text('Student', style: TextStyle(color: Colors.white)),
              ),
               ButtonBar(
                  children: <Widget>[
                    FlatButton(
                      child: const Text('Edit',
                          style: TextStyle(color: Colors.white)),
                      onPressed: () {},
                    ),
                    FlatButton(
                      child: const Text('Delete',
                          style: TextStyle(color: Colors.white)),
                      onPressed: () {},
                    ),
                  ],
                ),
              
            ],
          ),
        ),
      ),
    );
  }
}
