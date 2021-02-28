import 'package:calmify/my_flutter_app_icons.dart';
import 'package:flutter/material.dart';

class HowAreYou extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: double.infinity,
                color: Colors.transparent,
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  "How are you feeling today?",
                  textAlign: TextAlign.center,
                ),
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
