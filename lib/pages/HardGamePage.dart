import 'package:flutter/material.dart';
import 'package:memory_game/data/data.dart';

class HardGamePage extends StatefulWidget {
  @override
  _HardGamePageState createState() => _HardGamePageState();
}

class _HardGamePageState extends State<HardGamePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pairs = getHPairs();
    pairs.shuffle();
    visiblePairs = pairs;
    isSelected = true;
    Future.delayed(const Duration(seconds: 5), () {
      setState(() {
        visiblePairs = getHQuestions();
        isSelected = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      debugShowCheckedModeBanner: false,
      home: hpoint != 1200
          ? Scaffold(
        backgroundColor: Colors.white,
            body: SingleChildScrollView(
                child: Container(
                  // height: MediaQuery.of(context).size.height,
                  padding: EdgeInsets.symmetric(vertical: 50, horizontal: 50),
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Column(
                        children: [
                          Text(
                            "$hpoint/1200",
                            style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                decoration: TextDecoration.none),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Points",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                decoration: TextDecoration.none),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          GridView(
                            shrinkWrap: true,
                            gridDelegate:
                                SliverGridDelegateWithMaxCrossAxisExtent(
                              mainAxisSpacing: 0.0,
                              maxCrossAxisExtent: 100,
                            ),
                            children: List.generate(visiblePairs.length, (index) {
                              return Tile(
                                imagePath: visiblePairs[index].getImagePath(),
                                parent: this,
                                tileIndex: index,
                              );
                            }),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
          )
          : Container(
              color: Colors.white,
              padding: EdgeInsets.all(30),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(80),
                    child: Image.asset('assets/images/trophy.png'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(24)),
                    child: GestureDetector(
                      onTap: () {
                        hpoint = 0;
                        Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(builder: (context) => HardGamePage()),
                            (Route<dynamic> route) => false);
                      },
                      child: Text(
                        "Replay",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: 23,
                            fontStyle: FontStyle.normal,
                            decoration: TextDecoration.none),
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}

class Tile extends StatefulWidget {
  String imagePath;
  _HardGamePageState parent;
  int tileIndex;

  Tile({this.imagePath, this.parent, this.tileIndex});

  @override
  _TileState createState() => _TileState();
}

class _TileState extends State<Tile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!isSelected) {
          if (selectedImagePath != "") {
            if (selectedImagePath == pairs[widget.tileIndex].getImagePath()) {
              //right selection
              print("OK");
              isSelected = true;
              Future.delayed(const Duration(seconds: 1), () {
                hpoint = hpoint + 100;
                setState(() {});
                isSelected = false;

                widget.parent.setState(() {
                  pairs[widget.tileIndex].setImagePath("");
                  pairs[selectedTileIndex].setImagePath("");
                  selectedTileIndex = null;
                  selectedImagePath = "";
                });
              });
            } else {
              //wrong selection
              print("Not Ok");
              isSelected = true;
              Future.delayed(const Duration(seconds: 1), () {
                isSelected = false;
                widget.parent.setState(() {
                  pairs[widget.tileIndex].setIsSelected(false);
                  pairs[selectedTileIndex].setIsSelected(false);
                  selectedTileIndex = null;
                  selectedImagePath = "";
                });
                setState(() {});
              });
            }
          } else {
            selectedTileIndex = widget.tileIndex;
            selectedImagePath = pairs[widget.tileIndex].getImagePath();
          }
          setState(() {
            pairs[widget.tileIndex].setIsSelected(true);
          });
        }
      },
      child: Container(
          margin: EdgeInsets.all(5),
          child: pairs[widget.tileIndex].getImagePath() != ""
              ? Image.asset(pairs[widget.tileIndex].getIsSelected()
                  ? pairs[widget.tileIndex].getImagePath()
                  : widget.imagePath)
              : Image.asset('assets/images/game1/correct.png')),
    );
  }
}
