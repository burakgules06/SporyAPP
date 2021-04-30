import 'package:flutter/material.dart';

class Kol extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Kol> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.lightBlue,
        title: Text(
          "SporyAPP",
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Allerta",
            fontSize: 23,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Container(
          height: 800,
          width: double.infinity,
          child: GridView.count(
            padding: const EdgeInsets.all(10),
            mainAxisSpacing: 15,
            crossAxisCount: 1,
            children: <Widget>[
              Container(
                child: Center(
                  child: Text(
                    "      Kol Antrenmanı      ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        backgroundColor: Colors.lightBlue[100]),
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(200),
                    color: Colors.lightBlue[100],
                    image: DecorationImage(
                      image: AssetImage("assets/arm_muscle.png"),
                    )),
              ),
              GridView.count(
                primary: false,
                padding: const EdgeInsets.all(10),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: const Text(
                      "Elmas Şınav:                          " +
                          " Başlangıç Seviyesi : 3 x 8                     " +
                          "Orta Seviye : 3 x 12                            " +
                          "İleri Seviye : 3 x 15                           " +
                          "Profesyonel : 3 x Max",
                      style: TextStyle(height: 2),
                    ),
                    color: Colors.teal[100],
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: const Text(
                      "Biceps Curl:                          " +
                          " Başlangıç Seviyesi : 3 x 8                     " +
                          "Orta Seviye : 3 x 12                            " +
                          "İleri Seviye : 3 x 15                           " +
                          "Profesyonel : 3 x Max",
                      style: TextStyle(height: 2),
                    ),
                    color: Colors.teal[200],
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: const Text(
                      "Barfiks:                          " +
                          " Başlangıç Seviyesi : 3x8                     " +
                          "Orta Seviye : 3x12                            " +
                          "İleri Seviye : 3x15                           " +
                          "Profesyonel : 3xMax",
                      style: TextStyle(height: 2),
                    ),
                    color: Colors.teal[300],
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: const Text(
                      "Dumbell Curl:                          " +
                          " Başlangıç Seviyesi : 3x8                     " +
                          "Orta Seviye : 3x12                            " +
                          "İleri Seviye : 3x15                           " +
                          "Profesyonel : 3xMax",
                      style: TextStyle(height: 2),
                    ),
                    color: Colors.teal[400],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
