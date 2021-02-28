import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:calmify/my_flutter_app_icons.dart';

import 'package:url_launcher/url_launcher.dart';
// import 'package:firebase/firebase.dart';
import 'dart:math';
import 'package:flutter_clean_calendar/flutter_clean_calendar.dart';

void main() {
  runApp(Home());
}

var entries = {1: {'date': '18/02/2021', 'emoji': 1, 'journal': 'hello i went for a hackathon today for the first time 😊. it was fun and i made an app! ', 'memories': 'hello i went for a hackathon today for the first time 😊'},
  2: {'date': '19/02/2021', 'emoji': 3, 'journal': 'today was a bad day. i was unable to finish work ! ', 'memories': 'i was unable to finish work'},
  3: {'date': '20/02/2021', 'emoji': 2, 'journal': 'despite a bad start, i am positive about today. I will keep working till i finish off coding for my project. yay ','memories': 'I will keep working till i finish off coding for my project'},
  4: {'date': '21/02/2021', 'emoji': 5, 'journal': ' i got wet in the rain today. I am very angry about that. it made me shiver the entire day.', 'memories': 'i got wet in the rain today'},
  5: {'date': '21/02/2021', 'emoji': 3, 'journal': 'i had a pleasant day day today with my friends. i went to dinner to an italian place ', 'memories': 'i had a pleasant day day today with my friends'},
6: {'date': '21/02/2021', 'emoji': 5, 'journal': ' i got wet in the rain today. I am very angry about that. it made me shiver the entire day.', 'memories': 'i got wet in the rain today'},
7: {'date': '21/02/2021', 'emoji': 3, 'journal': 'i had a pleasant day day today with my friends. i went to dinner to an italian place ', 'memories': 'i had a pleasant day day today with my friends'}};



var deck =
{1: ["Meditation","deck/meditation.png","Meditation can transform your mental health for the better. It can also be one of the best forms of self-care. We don’t give ourselves much time throughout the course of the day to just let our minds be. Meditation is the perfect way to focus inward and acknowledge all of the thoughts and feelings you’ve been neglecting.","https://www.youtube.com/watch?v=inpok4MKVLM&ab_channel=Goodful"],
2: ["Take a walk","deck/walk.png","Head outside and take a deep breath of fresh air! Research has shown that being in nature can lead to reduced stress, anxiety, and even depression. Don’t worry, you don’t have to head into the wilderness for you to feel the benefits. Even just going to a nearby park, soccer field, or your backyard can really impact your mood. Go for a walk, pack a picnic, and soak up some Vitamin D.","https://www.youtube.com/watch?v=OJLRRMye4YI&ab_channel=TabaChake"],
3: ["Create something", "deck/paint.png","Arts and crafts can be an amazing release of your creative energy, and it can really put you into a peaceful state of mind. The beauty of incorporating arts and crafts into your self-care routine is that it requires no skill level or artistic ability. Studies have shown that creating art can actually lower cortisol levels (your stress hormone). Whether you’re painting, drawing, making origami, knitting, or even coloring, you can fall into a creative trance and relax your mind.","https://www.youtube.com/watch?v=lLWEXRAnQd0&ab_channel=BobRoss"],
4: ["Read a book", "deck/read.png", "Immersing yourself in a new book can feel like a temporary escape from the ‘real world.’ Carving out some time to separate yourself from life’s stressors and to connect to something outside of yourself can feel very freeing.","https://manybooks.net/"],
5: ["Volunteer", "deck/volunteer.png", "It may sound strange but one of the best forms of self-care isn’t about you at all. Try doing something for someone else. Helping someone can mean volunteering with an organization, calling up a loved one, sending someone a text of encouragement, or even doing someone a favor—big or small. These acts can get you out of your own head and make someone’s day a little better.","https://www.volunteer.sg/"],
6: ["Yoga", "deck/yoga.png","Yoga is a great form of self care. Yoga practice is about healing the self through self discovery and self acceptance. It's a transformational practice that strengthens the life force within. It teaches us to overcome internal and external obstacles that come with everyday life.","https://www.youtube.com/watch?v=gH1Wx6byvUo&ab_channel=YogawithKassandra"],
7: ["Listen to music", "deck/music.png","Do you know that listening to music is another way to care for yourself? Have you noticed the effects on your mood after listening to a song you like or to an upbeat one? And of course, your preferences may differ from mine, but music has the same impact on every one of us in a personal and distinctive way.","https://www.youtube.com/watch?v=XN41UJ7EZ4E&t=1164s&ab_channel=Andrela-Chxn"],
8: ["Read a poem", "deck/poetry.png", "Reading poetry is a healing experience for so many who search for comfort in the pages of a book. So is listening to a song or looking at a piece of art. Art and literature have a huge impact on our lives because they spill pain and beauty out into forms that make us feel whole again.","https://curraheee.wordpress.com/"]
};

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
                    CupertinoIcons.home,
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
                          // setState(() {
                          //   _iconColor = Colors.yellow;
                          // });
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
                child: Column(
                  children: <Widget>[
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
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
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
                        CupertinoIcons.arrow_right,
                      ),
                      onPressed: () {
                        var string = myController.text;
                        string= string.trim();
                        print(string);
                        var lastchar= string[string.length-1];
                        var dict= string.split(".");

                        if(lastchar=='.')
                          dict.removeLast();

                        var lendict= dict.length;
                        var max= -999;
                        var positive;

                        //final sentiment = Sentiment();
                        for(var i=0; i<lendict; i++){
                          var sentence;
                          //var sentence= (sentiment.analysis(dict[i], emoji: true));
                          var score=sentence['score'];
                          if(score>max)
                          {
                            max=score;
                            positive=dict[i].trim();
                          }
                          //print('hi');
                          //print(score);
                        }

                        print("The most positive sentence is: $positive");
                        var mem= positive;
                        entries[8]['date']= '27/02/2021';
                        entries[8]['emoji']= 1;
                        entries[8]['journal']= positive;
                        entries[8]['memories']= mem;
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

class Home extends StatelessWidget {
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
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[

                  Container(
                    child: IconButton(
                      icon: Icon(
                        CupertinoIcons.phone,
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
                child: Image.asset(
                    "assets/calmify.png", height: 150, width: 150),
              ),
              const SizedBox(height: 20),
              Text("Welcome to your safe space to heal.", style: headline1,
                  textAlign: TextAlign.center),
              const SizedBox(height: 25),
              SizedBox(
                width: 350,
                height: 75,
                child: RaisedButton(
                  onPressed: () {
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
                  onPressed: () {
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
                  onPressed: () {
                    runApp(Rewards());
                  },
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
  static var cardNo = 1;
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
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              Container(
                child: IconButton(
                  icon: Icon(
                    CupertinoIcons.home,
                    size: 40,
                  ),
                  alignment: Alignment.topLeft,
                  onPressed: () {
                    runApp(Home());
                    print('IconButton is pressed');
                  },
                ),
              ),
              const SizedBox(height: 10),
              Text(deck[cardNo][0], style: headline1, textAlign: TextAlign.center),
              Container(
                padding: const EdgeInsets.all(10),
                child: Image.asset(deck[cardNo][1]),
              ),
              Container(
                child: Text(
                    deck[cardNo][2],
                    style: TextStyle(fontSize: 16)),
                padding: const EdgeInsets.symmetric(horizontal: 12),
              ),
              const SizedBox(height:5),
              const SizedBox(height: 25),
              RaisedButton(
                onPressed: () {
      launch((deck[cardNo][3]));
                },
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
                  child: const Text('Find out more!',
                      style: TextStyle(fontSize: 16)),
                ),
              ),
              const SizedBox(height: 25),
              RaisedButton(
                onPressed: () {
                  Random random = new Random();
                  cardNo = random.nextInt(8) + 1;
                  runApp(SelfCare());
                },
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

class Resources extends StatelessWidget {
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
          child: Column(
            children: <Widget>[
              Container(
                child: IconButton(
                  icon: Icon(
                    CupertinoIcons.home,
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
                Text("Singapore Mental Health Resources", style: headline1,
                    textAlign: TextAlign.center),
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
                height: 100,
                child: RaisedButton(
                  onPressed: () {
                    launch(('tel://18002026868'));},
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
                height: 100,
                child: RaisedButton(
                  onPressed: () {
                    launch(('tel://18002214444'));},
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
                height: 100,
                child: RaisedButton(
                  onPressed: () {
                    launch(('tel://63853714'));
                    print("No");
                  },
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

class Rewards extends StatelessWidget {
  static var entryNo = 1;
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
              CupertinoIcons.home,
              size: 40,
            ),
            alignment: Alignment.topLeft,
            onPressed: () {
              runApp(Home());
              print('IconButton is pressed');
            },
          ),
        ),
                const SizedBox(height: 10),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                child: Row(
                  children: <Widget> [
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.amber,
                      child: IconButton(
                        icon: Icon(
                          MyFlutterApp.anxious_01,
                          size: 35,
                        ),
                        onPressed: () {
                          //statements
                          print('IconButton is pressed');
                        },
                      ),
                    ),

                  ]
                ),
              ),
              Container(
                child: Row(
                    children: <Widget> [
                      Container(
                        width: 50,
                        height: 50,
                        color: Colors.amber,
                        child: IconButton(
                          icon: Icon(
                            MyFlutterApp.anxious_01,
                            size: 35,
                          ),
                          onPressed: () {
                            //statements
                            print('IconButton is pressed');
                          },
                        ),
                      ),

                    ]
                ),
              ),
              Container(
                child: Row(
                    children: <Widget> [
                      Container(
                        width: 50,
                        height: 50,
                        color: Colors.amber,
                        child: IconButton(
                          icon: Icon(
                            MyFlutterApp.anxious_01,
                            size: 35,
                          ),
                          onPressed: () {
                            //statements
                            print('IconButton is pressed');
                          },
                        ),
                      ),

                    ]
                ),
              ),
             Container(
                child: Row(
                    children: <Widget> [
                      Container(
                        width: 50,
                        height: 50,
                        color: Colors.amber,
                        child: IconButton(
                          icon: Icon(
                            MyFlutterApp.anxious_01,
                            size: 35,
                          ),
                          onPressed: () {
                            //statements
                            print('IconButton is pressed');
                          },
                        ),
                      ),

                    ]
                ),
              ),
              Container(
                child: Row(
                    children: <Widget> [
                      Container(
                        width: 50,
                        height: 50,
                        color: Colors.amber,
                        child: IconButton(
                          icon: Icon(
                            MyFlutterApp.anxious_01,
                            size: 35,
                          ),
                          onPressed: () {
                            //statements
                            print('IconButton is pressed');
                          },
                        ),
                      ),

                    ]
                ),
              ),
              Container(
                child: Row(
                    children: <Widget> [
                      Container(
                        width: 50,
                        height: 50,
                        color: Colors.amber,
                        child: IconButton(
                          icon: Icon(
                            MyFlutterApp.anxious_01,
                            size: 35,
                          ),
                          onPressed: () {
                            //statements
                            print('IconButton is pressed');
                          },
                        ),
                      ),

                    ]
                ),
              ),
              Container(
                child: Row(
                    children: <Widget> [
                      Container(
                        width: 50,
                        height: 50,
                        color: Colors.amber,
                        child: IconButton(
                          icon: Icon(
                            MyFlutterApp.anxious_01,
                            size: 35,
                          ),
                          onPressed: () {
                            //statements
                            print('IconButton is pressed');
                          },
                        ),
                      ),

                    ]
                ),
              ),
            ],
          ),
        ),
                const SizedBox(height:8),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        child: Row(
                            children: <Widget> [
                              Container(
                                width: 50,
                                height: 50,
                                color: Colors.amber,
                                child: IconButton(
                                  icon: Icon(
                                    MyFlutterApp.anxious_01,
                                    size: 35,
                                  ),
                                  onPressed: () {
                                    entryNo = 1;
                                    runApp(Rewards());
                                    //statements
                                    print('IconButton is pressed');
                                  },
                                ),
                              ),

                            ]
                        ),
                      ),
                      Container(
                        child: Row(
                            children: <Widget> [
                              Container(
                                width: 50,
                                height: 50,
                                color: Colors.amber,
                                child: IconButton(
                                  icon: Icon(
                                    MyFlutterApp.anxious_01,
                                    size: 35,
                                  ),
                                  onPressed: () {
                                    entryNo = 2;
                                    runApp(Rewards());
                                    //statements
                                    print('IconButton is pressed');
                                  },
                                ),
                              ),

                            ]
                        ),
                      ),
                      Container(
                        child: Row(
                            children: <Widget> [
                              Container(
                                width: 50,
                                height: 50,
                                color: Colors.amber,
                                child: IconButton(
                                  icon: Icon(
                                    MyFlutterApp.anxious_01,
                                    size: 35,
                                  ),
                                  onPressed: () {

                                    entryNo = 3;
                                    runApp(Rewards());
                                    //statements
                                    print('IconButton is pressed');
                                  },
                                ),
                              ),

                            ]
                        ),
                      ),
                      Container(
                        child: Row(
                            children: <Widget> [
                              Container(
                                width: 50,
                                height: 50,
                                color: Colors.amber,
                                child: IconButton(
                                  icon: Icon(
                                    MyFlutterApp.anxious_01,
                                    size: 35,
                                  ),
                                  onPressed: () {

                                    entryNo = 4;
                                    runApp(Rewards());
                                    //statements
                                    print('IconButton is pressed');
                                  },
                                ),
                              ),

                            ]
                        ),
                      ),
                      Container(
                        child: Row(
                            children: <Widget> [
                              Container(
                                width: 50,
                                height: 50,
                                color: Colors.amber,
                                child: IconButton(
                                  icon: Icon(
                                    MyFlutterApp.anxious_01,
                                    size: 35,
                                  ),
                                  onPressed: () {
                                    //statements
                                    entryNo = 5;
                                    runApp(Rewards());
                                    print('IconButton is pressed');
                                  },
                                ),
                              ),

                            ]
                        ),
                      ),
                      Container(
                        child: Row(
                            children: <Widget> [
                              Container(
                                width: 50,
                                height: 50,
                                color: Colors.amber,
                                child: IconButton(
                                  icon: Icon(
                                    MyFlutterApp.anxious_01,
                                    size: 35,
                                  ),
                                  onPressed: () {
                                    entryNo = 6;
                                    runApp(Rewards());
                                    //statements
                                    print('IconButton is pressed');
                                  },
                                ),
                              ),

                            ]
                        ),
                      ),
                      Container(
                        child: Row(
                            children: <Widget> [
                              Container(
                                width: 50,
                                height: 50,
                                color: Colors.amber,
                                child: IconButton(
                                  icon: Icon(
                                    MyFlutterApp.anxious_01,
                                    size: 35,
                                  ),
                                  onPressed: () {
                                    //statements
                                    entryNo = 7;
                                    runApp(Rewards());
                                    print('IconButton is pressed');
                                  },
                                ),
                              ),

                            ]
                        ),
                      ),
                    ],
                  ),

                ),
                const SizedBox(height:8),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        child: Row(
                            children: <Widget> [
                              Container(
                                width: 50,
                                height: 50,
                                color: Colors.amber,
                                child: IconButton(
                                  icon: Icon(
                                    MyFlutterApp.anxious_01,
                                    size: 35,
                                  ),
                                  onPressed: () {
                                    //statements
                                    print('IconButton is pressed');
                                  },
                                ),
                              ),

                            ]
                        ),
                      ),
                      Container(
                        child: Row(
                            children: <Widget> [
                              Container(
                                width: 50,
                                height: 50,
                                color: Colors.amber,
                                child: IconButton(
                                  icon: Icon(
                                    MyFlutterApp.anxious_01,
                                    size: 35,
                                  ),
                                  onPressed: () {
                                    //statements
                                    print('IconButton is pressed');
                                  },
                                ),
                              ),

                            ]
                        ),
                      ),
                      Container(
                        child: Row(
                            children: <Widget> [
                              Container(
                                width: 50,
                                height: 50,
                                color: Colors.amber,
                                child: IconButton(
                                  icon: Icon(
                                    MyFlutterApp.anxious_01,
                                    size: 35,
                                  ),
                                  onPressed: () {
                                    //statements
                                    print('IconButton is pressed');
                                  },
                                ),
                              ),

                            ]
                        ),
                      ),
                      Container(
                        child: Row(
                            children: <Widget> [
                              Container(
                                width: 50,
                                height: 50,
                                color: Colors.amber,
                                child: IconButton(
                                  icon: Icon(
                                    MyFlutterApp.anxious_01,
                                    size: 35,
                                  ),
                                  onPressed: () {
                                    //statements
                                    print('IconButton is pressed');
                                  },
                                ),
                              ),

                            ]
                        ),
                      ),
                      Container(
                        child: Row(
                            children: <Widget> [
                              Container(
                                width: 50,
                                height: 50,
                                color: Colors.amber,
                                child: IconButton(
                                  icon: Icon(
                                    MyFlutterApp.anxious_01,
                                    size: 35,
                                  ),
                                  onPressed: () {
                                    //statements
                                    print('IconButton is pressed');
                                  },
                                ),
                              ),

                            ]
                        ),
                      ),
                      Container(
                        child: Row(
                            children: <Widget> [
                              Container(
                                width: 50,
                                height: 50,
                                color: Colors.amber,
                                child: IconButton(
                                  icon: Icon(
                                    MyFlutterApp.anxious_01,
                                    size: 35,
                                  ),
                                  onPressed: () {
                                    //statements
                                    print('IconButton is pressed');
                                  },
                                ),
                              ),

                            ]
                        ),
                      ),
                      Container(
                        child: Row(
                            children: <Widget> [
                              Container(
                                width: 50,
                                height: 50,
                                color: Colors.amber,
                                child: IconButton(
                                  icon: Icon(
                                    MyFlutterApp.anxious_01,
                                    size: 35,
                                  ),
                                  onPressed: () {
                                    //statements
                                    print('IconButton is pressed');
                                  },
                                ),
                              ),

                            ]
                        ),
                      ),
                    ],
                  ),

                ),
                const SizedBox(height:8),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        child: Row(
                            children: <Widget> [
                              Container(
                                width: 50,
                                height: 50,
                                color: Colors.amber,
                                child: IconButton(
                                  icon: Icon(
                                    MyFlutterApp.anxious_01,
                                    size: 35,
                                  ),
                                  onPressed: () {
                                    //statements
                                    print('IconButton is pressed');
                                  },
                                ),
                              ),

                            ]
                        ),
                      ),
                      Container(
                        child: Row(
                            children: <Widget> [
                              Container(
                                width: 50,
                                height: 50,
                                color: Colors.amber,
                                child: IconButton(
                                  icon: Icon(
                                    MyFlutterApp.anxious_01,
                                    size: 35,
                                  ),
                                  onPressed: () {
                                    //statements
                                    print('IconButton is pressed');
                                  },
                                ),
                              ),

                            ]
                        ),
                      ),
                      Container(
                        child: Row(
                            children: <Widget> [
                              Container(
                                width: 50,
                                height: 50,
                                color: Colors.amber,
                                child: IconButton(
                                  icon: Icon(
                                    MyFlutterApp.anxious_01,
                                    size: 35,
                                  ),
                                  onPressed: () {
                                    //statements
                                    print('IconButton is pressed');
                                  },
                                ),
                              ),

                            ]
                        ),
                      ),
                      Container(
                        child: Row(
                            children: <Widget> [
                              Container(
                                width: 50,
                                height: 50,
                                color: Colors.amber,
                                child: IconButton(
                                  icon: Icon(
                                    MyFlutterApp.anxious_01,
                                    size: 35,
                                  ),
                                  onPressed: () {
                                    //statements
                                    print('IconButton is pressed');
                                  },
                                ),
                              ),

                            ]
                        ),
                      ),
                      Container(
                        child: Row(
                            children: <Widget> [
                              Container(
                                width: 50,
                                height: 50,
                                color: Colors.amber,
                                child: IconButton(
                                  icon: Icon(
                                    MyFlutterApp.anxious_01,
                                    size: 35,
                                  ),
                                  onPressed: () {
                                    //statements
                                    print('IconButton is pressed');
                                  },
                                ),
                              ),

                            ]
                        ),
                      ),
                      Container(
                        child: Row(
                            children: <Widget> [
                              Container(
                                width: 50,
                                height: 50,
                                color: Colors.amber,
                                child: IconButton(
                                  icon: Icon(
                                    MyFlutterApp.anxious_01,
                                    size: 35,
                                  ),
                                  onPressed: () {
                                    //statements
                                    print('IconButton is pressed');
                                  },
                                ),
                              ),

                            ]
                        ),
                      ),
                      Container(
                        child: Row(
                            children: <Widget> [
                              Container(
                                width: 50,
                                height: 50,
                                color: Colors.amber,
                                child: IconButton(
                                  icon: Icon(
                                    MyFlutterApp.anxious_01,
                                    size: 35,
                                  ),
                                  onPressed: () {
                                    //statements
                                    print('IconButton is pressed');
                                  },
                                ),
                              ),

                            ]
                        ),
                      ),
                    ],
                  ),

                ),
                const SizedBox(height:8),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        child: Row(
                            children: <Widget> [
                              Container(
                                width: 50,
                                height: 50,
                                color: Colors.amber,
                                child: IconButton(
                                  icon: Icon(
                                    MyFlutterApp.anxious_01,
                                    size: 35,
                                  ),
                                  onPressed: () {
                                    //statements
                                    print('IconButton is pressed');
                                  },
                                ),
                              ),

                            ]
                        ),
                      ),
                      Container(
                        child: Row(
                            children: <Widget> [
                              Container(
                                width: 50,
                                height: 50,
                                color: Colors.amber,
                                child: IconButton(
                                  icon: Icon(
                                    MyFlutterApp.anxious_01,
                                    size: 35,
                                  ),
                                  onPressed: () {
                                    //statements
                                    print('IconButton is pressed');
                                  },
                                ),
                              ),

                            ]
                        ),
                      ),
                      Container(
                        child: Row(
                            children: <Widget> [
                              Container(
                                width: 50,
                                height: 50,
                                color: Colors.amber,
                                child: IconButton(
                                  icon: Icon(
                                    MyFlutterApp.anxious_01,
                                    size: 35,
                                  ),
                                  onPressed: () {
                                    //statements
                                    print('IconButton is pressed');
                                  },
                                ),
                              ),

                            ]
                        ),
                      ),
                      Container(
                        child: Row(
                            children: <Widget> [
                              Container(
                                width: 50,
                                height: 50,
                                color: Colors.amber,
                                child: IconButton(
                                  icon: Icon(
                                    MyFlutterApp.anxious_01,
                                    size: 35,
                                  ),
                                  onPressed: () {
                                    //statements
                                    print('IconButton is pressed');
                                  },
                                ),
                              ),

                            ]
                        ),
                      ),
                      Container(
                        child: Row(
                            children: <Widget> [
                              Container(
                                width: 50,
                                height: 50,
                                color: Colors.amber,
                                child: IconButton(
                                  icon: Icon(
                                    MyFlutterApp.anxious_01,
                                    size: 35,
                                  ),
                                  onPressed: () {
                                    //statements
                                    print('IconButton is pressed');
                                  },
                                ),
                              ),

                            ]
                        ),
                      ),
                      Container(
                        child: Row(
                            children: <Widget> [
                              Container(
                                width: 50,
                                height: 50,
                                color: Colors.amber,
                                child: IconButton(
                                  icon: Icon(
                                    MyFlutterApp.anxious_01,
                                    size: 35,
                                  ),
                                  onPressed: () {
                                    //statements
                                    print('IconButton is pressed');
                                  },
                                ),
                              ),

                            ]
                        ),
                      ),
                      Container(
                        child: Row(
                            children: <Widget> [
                              Container(
                                width: 50,
                                height: 50,
                                color: Colors.amber,
                                child: IconButton(
                                  icon: Icon(
                                    MyFlutterApp.anxious_01,
                                    size: 35,
                                  ),
                                  onPressed: () {
                                    //statements
                                    print('IconButton is pressed');
                                  },
                                ),
                              ),

                            ]
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height:30),
                Text("Your highlight from " + entries[entryNo]['date'], style: headline1, textAlign: TextAlign.center),
                const SizedBox(height:15),
                Container(
                  child: Text(
                      entries[entryNo]['memories'],
                      style: TextStyle(fontSize: 16)),
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                ),
                const SizedBox(height:30),
                Text("Full entry", style: headline1, textAlign: TextAlign.center),
                const SizedBox(height:15),
                  Text(entries[entryNo]['journal'], style: TextStyle(fontSize: 16)),

],
      ),
    ),
    ),
    );
  }
}
