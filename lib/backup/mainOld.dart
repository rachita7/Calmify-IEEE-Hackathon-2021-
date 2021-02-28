import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:calmify/my_flutter_app_icons.dart';

void main() {
  runApp(HowAreYou());
  //runApp(MyApp());
}

final headline1 = TextStyle(fontFamily: "Aclonica", fontSize: 25);
final bodyText1 = TextStyle(fontSize: 10);

class CustomTheme {
  static ThemeData get lightTheme {
    //1
    return ThemeData(
      textTheme: TextTheme(
        headline1: TextStyle(),
        bodyText1: TextStyle(),
        bodyText2: TextStyle(),
        button: TextStyle(),
      ).apply(
          bodyColor: Color.fromRGBO(255, 229, 244, 1)
      ),
      //2
      primaryColor: Colors.deepPurple,
      scaffoldBackgroundColor: Colors.deepPurple,
      fontFamily: 'Poppins', //3
      buttonTheme: ButtonThemeData(
        // 4
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
        buttonColor: Colors.deepOrange,
      ),
    );
  }
}

class HowAreYou extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: CustomTheme.lightTheme,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color.fromRGBO(248, 100, 127, 1),
                    Color.fromRGBO(96, 5, 125, 1),
                  ])),
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                color: Colors.transparent,
                padding: EdgeInsets.only(top: 100.0),
                child: Text(
                    "Hello there! How are you feeling today?",
                    textAlign: TextAlign.center, style: headline1),
              ),
              Container(
                width: double.infinity,
                color: Colors.transparent,
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          MyFlutterApp.happy_01,
                        ),
                        onPressed: () {
                          //statements
                          print('IconButton is pressed');
                        },
                      ),
                      IconButton(
                        icon: Icon(
                          MyFlutterApp.meh_01,
                        ),
                        onPressed: () {
                          //statements
                          print('IconButton is pressed');
                        },
                      ),
                      IconButton(
                        icon: Icon(
                          MyFlutterApp.sad_01,
                        ),
                        onPressed: () {
                          //statements
                          print('IconButton is pressed');
                        },
                      ),
                      IconButton(
                        icon: Icon(
                          MyFlutterApp.anxious_01,
                        ),
                        onPressed: () {
                          //statements
                          print('IconButton is pressed');
                        },
                      ),
                      IconButton(
                        icon: Icon(
                          MyFlutterApp.irritated_01,
                        ),
                        onPressed: () {
                          //statements
                          print('IconButton is pressed');
                        },
                      ),
                    ]),
              ),
              Container(
                width: double.infinity,
                color: Colors.transparent,
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Column (
                    children: <Widget> [
                      Text(
                        "Tell me more!",
                        textAlign: TextAlign.center,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Enter a search term'),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.arrow_forward,
                        ),
                        onPressed: () {
                          //statements
                          print('IconButton is pressed');
                        },
                      ),
                    ]
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: CustomTheme.lightTheme,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color.fromRGBO(248, 100, 127, 1),
                    Color.fromRGBO(96, 5, 125, 1),
                  ])),
          width: double.infinity,
          padding: EdgeInsets.only(top: 40),
          alignment: Alignment.center,
          child: Column(

            children: <Widget>[
              Text("Yoga", style: headline1, textAlign: TextAlign.center),
              Container(
                padding: const EdgeInsets.all(15),
                child: Image.asset("assets/yoga.jpg"),
              ),
              Container(
                child: Text("Yoga is a great form of self care. Yoga practice is about healing the self through self discovery and self acceptance. It's a transformational practice that strengthens the life force within. It teaches us to overcome internal and external obstacles that come with everyday life.", style: TextStyle(fontSize: 16)),
                padding: const EdgeInsets.symmetric(horizontal: 12),
              ),

              const SizedBox(height: 25),
              RaisedButton(
                onPressed: () {},
                textColor: Color.fromRGBO(96, 5, 125, 1),
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: <Color>[
                        Color.fromRGBO(255, 206, 6, 1),
                        Color.fromRGBO(248, 100, 127, 1),
                      ],
                    ),
                  ),
                  padding: const EdgeInsets.all(10.0),
                  child: const Text('Try another activity!',
                      style: TextStyle(fontSize: 16)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
