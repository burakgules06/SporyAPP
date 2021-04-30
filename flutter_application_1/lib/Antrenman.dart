import 'package:flutter/material.dart';
import 'package:flutter_application_1/Bacak.dart';
import 'Gogus.dart';
import 'Kardiyo.dart';
import 'Kol.dart';
import 'Omuz.dart';
import 'Sirt.dart';

class Antrenman extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Antrenman> {
  int seciliMenu = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 800,
          width: double.infinity,
          child: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            mainAxisSpacing: 30,
            crossAxisCount: 2,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Gogus()));
                },
                child: Container(
                  child: Center(
                    child: Text(
                      "    Göğüs Antrenmanı    ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          fontFamily: 'Rajdhani',
                          color: Colors.white,
                          backgroundColor: Colors.black26),
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200),
                      image: DecorationImage(
                        image: AssetImage("assets/chest_male.png"),
                      )),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Sirt()));
                },
                child: Container(
                  child: Center(
                    child: Text(
                      "      Sırt Antrenmanı      ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.white,
                          fontFamily: 'Rajdhani',
                          backgroundColor: Colors.black26),
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200),
                      image: DecorationImage(
                        image: AssetImage("assets/back_male.png"),
                      )),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Kol()));
                },
                child: Container(
                  child: Center(
                    child: Text(
                      "       Kol Antrenmanı      ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          fontFamily: 'Rajdhani',
                          color: Colors.white,
                          backgroundColor: Colors.black38),
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200),
                      image: DecorationImage(
                        image: AssetImage("assets/arm_muscle.png"),
                      )),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Omuz()));
                },
                child: Container(
                  child: Center(
                    child: Text(
                      "    Omuz Antrenmanı    ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          fontFamily: 'Rajdhani',
                          color: Colors.white,
                          backgroundColor: Colors.black38),
                    ),
                  ),
                  height: 190,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200),
                      image: DecorationImage(
                        image: AssetImage("assets/shoulder_man.png"),
                      )),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Bacak()));
                },
                child: Container(
                  child: Center(
                    child: Text(
                      "    Bacak Antrenmanı    ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.white,
                          fontFamily: 'Rajdhani',
                          backgroundColor: Colors.black38),
                    ),
                  ),
                  height: 190,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200),
                      image: DecorationImage(
                        image: AssetImage("assets/leg_muscle.png"),
                      )),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Kardio()));
                },
                child: Container(
                  child: Center(
                    child: Text(
                      "    Kardiyo Antrenmanı    ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.white,
                          fontFamily: 'Rajdhani',
                          backgroundColor: Colors.black38),
                    ),
                  ),
                  height: 190,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200),
                      image: DecorationImage(
                        image: AssetImage("assets/cardio.png"),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
