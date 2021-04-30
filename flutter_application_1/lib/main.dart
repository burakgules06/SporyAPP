import 'package:flutter/material.dart';
import 'package:flutter_application_1/GirisEkrani.dart';

import 'Anasayfa.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "SporyaPP",
      home: GirisEkrani(),
    );
  }
}
