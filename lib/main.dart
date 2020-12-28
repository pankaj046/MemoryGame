import 'package:flutter/material.dart';
import 'package:memory_game/pages/GamePage.dart';
import 'package:memory_game/pages/HardGamePage.dart';
import 'package:memory_game/util/PreferenceManager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {



  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black26,
        body: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 90,
                height: 90,
                child: Image.asset('assets/images/puzzle.png'),
              ),
              SizedBox(height: 20),
              Text(
                "Mind Game",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w200,
                  fontSize: 40,
                ),
              ),
              SizedBox(height: 50),
              Column(
                children: <Widget>[
                  InkWell(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      splashColor: Colors.black12,
                      onTap: () {
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(builder: (context) => GamePage()),
                                (Route<dynamic> route) => false);
                      },
                      child: Container(
                        width: MediaQuery
                            .of(context)
                            .size
                            .width,
                        height: 50,
                        alignment: Alignment.center,
                        color: Colors.amber,
                        child: Text(
                          "Easy",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      )),
                  Divider(
                    color: Colors.transparent,
                  ),
                  InkWell(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      splashColor: Colors.black12,
                      onTap: () {
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                                builder: (context) => HardGamePage()),
                                (Route<dynamic> route) => false);
                      },
                      child: Container(
                        width: MediaQuery
                            .of(context)
                            .size
                            .width,
                        height: 50,
                        alignment: Alignment.center,
                        color: Colors.amber,
                        child: Text(
                          "Hard",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      )),
                  Divider(
                    color: Colors.transparent,
                  ),
                  InkWell(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      splashColor: Colors.black12,
                      onTap: () {
                        double easy = PreferenceManager.getDouble(PreferenceManager.EASY) as double;
                        double hard = PreferenceManager.getDouble(PreferenceManager.HARD) as double;
                        showModalBottomSheet(
                            context: context,
                            builder: (BuildContext bc) {
                              return Container(
                                padding: EdgeInsets.all(30),
                                child: Column(
                                  children: <Widget>[
                                    Text("High Score", style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w600
                                    ),),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text("Easy Game $easy",  style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.w300
                                    ),),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text("Hard Game $hard",  style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.w300
                                    ),),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text("(Lower value is batter)"),
                                  ],
                                ),
                              );
                            });
                      },
                      child: Container(
                        width: MediaQuery
                            .of(context)
                            .size
                            .width,
                        height: 50,
                        alignment: Alignment.center,
                        color: Colors.amber,
                        child: Text(
                          "Score",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      )),
                ],
              )
            ],
          ),
        ));
  }
}
