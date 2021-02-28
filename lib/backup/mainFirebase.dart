import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:calmify/my_flutter_app_icons.dart';
import 'package:firebase/firebase.dart';

void main() {
  runApp(Home());
}

final headline1 = TextStyle(fontFamily: "Aclonica", fontSize: 25);
final bodyText1 = TextStyle(fontSize: 10);
final myController = TextEditingController();

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
                child: IconButton(
                  icon: Icon(
                    Icons.home_filled,
                    size: 40,
                  ),
                  alignment: Alignment.topLeft,
                  onPressed: () {
                    runApp(Home());
                    print('IconButton is pressed');
                  },
                ),
              ),
              Container(
                width: double.infinity,
                color: Colors.transparent,
                padding: EdgeInsets.only(top: 30.0),
                child: Text(
                    "Hello there! How are you feeling today?",
                    textAlign: TextAlign.center, style: headline1),
              ),
              Container(
                width: double.infinity,
                color: Colors.transparent,
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          MyFlutterApp.happy_01,
                          size: 40,
                        ),
                        onPressed: () {
                          //statements
                          print('IconButton is pressed');
                        },
                      ),
                      IconButton(
                        icon: Icon(
                          MyFlutterApp.meh_01,
                          size: 40,
                        ),
                        onPressed: () {
                          //statements
                          print('IconButton is pressed');
                        },
                      ),
                      IconButton(
                        icon: Icon(
                          MyFlutterApp.sad_01,
                          size: 40,
                        ),
                        onPressed: () {
                          //statements
                          print('IconButton is pressed');
                        },
                      ),
                      IconButton(
                        icon: Icon(
                          MyFlutterApp.anxious_01,
                          size: 40,
                        ),
                        onPressed: () {
                          //statements
                          print('IconButton is pressed');
                        },
                      ),
                      IconButton(
                        icon: Icon(
                          MyFlutterApp.irritated_01,
                          size: 40,
                        ),
                        onPressed: () {
                          print('IconButton is pressed');
                        },
                        highlightColor: Color.fromRGBO(255, 229, 244, 1),
                      ),
                    ]),
              ),
              Container(
                width: double.infinity,
                color: Colors.transparent,
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Column (
                  children: <Widget> [
                    const SizedBox(height: 10),
                    Text(
                      "Tell me more!",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18),
                    ),
                    const SizedBox(height: 5),
                    Container(
                      color: Color.fromRGBO(255, 255, 255, 0.6),
                      height: 350,
                      padding:EdgeInsets.symmetric(horizontal:15.0),
                      child: TextField(
                        controller: myController,
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Tell me about your day.'),
                      ),
                    ),

                    IconButton(
                      color: Color.fromRGBO(255, 229, 244, 1),
                      icon: Icon(
                        Icons.arrow_forward,
                      ),
                      onPressed: () {
                        var journalEntry = myController.text;
                        runApp(Home());
                        print('IconButton is pressed');
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class Home extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return MaterialApp (
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
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[

                  Container(
                    child: IconButton(
                      icon: Icon(
                        Icons.call,
                        size: 40,
                      ),
                      alignment: Alignment.topLeft,
                      onPressed: () {
                        runApp(Resources());
                        print('IconButton is pressed');
                      },
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 40),
              Container(
                child: Image.asset("assets/calmify.png", height: 150, width: 150),
              ),
              const SizedBox(height: 20),
              Text("Welcome to your safe space to heal.", style: headline1, textAlign: TextAlign.center),
              const SizedBox(height: 25),
              SizedBox(
                width: 350,
                height: 75,
                child: RaisedButton(
                  onPressed: (){
                    runApp(HowAreYou());
                  },
                  color: Colors.white,
                  padding: EdgeInsets.all(15.0),
                  child:
                  Text('Journal Entry',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 35.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 350,
                height: 75,
                child: RaisedButton(
                  onPressed: (){
                    runApp(SelfCare());
                  },
                  color: Colors.white,
                  padding: EdgeInsets.all(15.0),
                  child:
                  Text('Self Care Cards',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 35.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 350,
                height: 75,
                child: RaisedButton(
                  onPressed: (){},
                  color: Colors.white,
                  padding: EdgeInsets.all(15.0),
                  child:
                  Text('Memory Lane',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 35.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class SelfCare extends StatelessWidget {
  @override
  final fb = Firebase.Database.instance;
  var retrievedName = "";
  String name = "";
  Widget build(BuildContext context) {
    final ref = fb.reference().child("self-care");
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
          padding: EdgeInsets.only(top: 5),
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
          Container(
          child: IconButton(
            icon: Icon(
            Icons.home_filled,
            size: 40,
          ),
          alignment: Alignment.topLeft,
          onPressed: () {
            runApp(Home());
            print('IconButton is pressed');
          },
        ),
      ),
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
        ],
      ),
    ),
    ),
    );
  }
}

class Resources extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return MaterialApp (
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
          child: Column(
            children: <Widget>[
              Container(
                child: IconButton(
                  icon: Icon(
                    Icons.home_filled,
                    size: 40,
                  ),
                  alignment: Alignment.topLeft,
                  onPressed: () {
                    runApp(Home());
                    print('IconButton is pressed');
                  },
                ),
              ),

              Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(20.0),
                  ),
                ],
              ),
              Container(
                //radius: 80.0,
                //backgroundImage: AssetImage('')
                //backgroundColor: Colors.pinkAccent,
                //backgroundImage: AssetImage('images/icon_1.PNG'),
                padding: EdgeInsets.all(20.0),
                //color: Colors.blue[600],
                alignment: Alignment.center,
                child:
                Text("Singapore Mental Health Resources", style: headline1, textAlign: TextAlign.center),
                // child: Text('Singapore\nMental Health\nResources',
                //   style: TextStyle(
                //     fontFamily: 'Source Sans Pro',
                //     fontSize: 45.0,
                //     color: Colors.white,
                //     fontWeight: FontWeight.bold,
                //   ),
              ),
              SizedBox(
                width: 350,
                height: 75,
                child: RaisedButton(
                  onPressed: (){},
                  color: Colors.white,
                  padding: EdgeInsets.all(15.0),
                  child:
                  Text('National Care Hotline:\n1800-202-6868 ',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
              ),
              SizedBox(
                width: 350,
                height: 75,
                child: RaisedButton(
                  onPressed: (){},
                  color: Colors.white,
                  padding: EdgeInsets.all(15.0),
                  child:
                  Text('Samaritans of Singapore:\n1800-221-4444',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
              ),
              SizedBox(
                width: 350,
                height: 75,
                child: RaisedButton(
                  onPressed: (){},
                  color: Colors.white,
                  padding: EdgeInsets.all(15.0),
                  child:
                  Text('Silver Ribbon Singapore:\n6385-3714',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}