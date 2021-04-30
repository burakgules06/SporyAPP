import 'package:flutter/material.dart';
import 'package:flutter_application_1/Antrenman.dart';

class Anasayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SporyAPP",
      home: AnaEkran(),
    );
  }
}

class AnaEkran extends StatefulWidget {
  @override
  _AnaEkranState createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();
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
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), title: Text("Anasayfa")),
          BottomNavigationBarItem(
              icon: Icon(Icons.run_circle), title: Text("Antrenman")),
        ],
        currentIndex: _selectedIndex,
        onTap: _onTap,
      ),
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          CustomScrollView(
            primary: false,
            slivers: <Widget>[
              SliverPadding(
                padding: const EdgeInsets.all(20),
                sliver: SliverGrid.count(
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(25),
                      child: const Image(
                        image: AssetImage("assets/baskul.png"),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(25),
                      child: const Image(
                        image: AssetImage("assets/dumbell.png"),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(25),
                      child: const Image(
                        image: AssetImage("assets/pilates.png"),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(25),
                      child: const Image(
                        image: AssetImage("assets/cardio.png"),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(25),
                      child: const Image(
                        image: AssetImage("assets/yoga.png"),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(25),
                      child: const Image(
                        image: AssetImage("assets/diet.png"),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Antrenman(),
        ],
      ),
    );
  }

  void _onTap(int value) {
    setState(() {
      _selectedIndex = value;
    });

    _pageController.jumpToPage(value);
  }
}
