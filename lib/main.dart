import 'package:flutter/material.dart';
import 'package:podcast/myaudio.dart';
import 'package:podcast/secondPage.dart';
import 'package:provider/provider.dart';
import 'homePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MyAudio>(
      create: (_) => MyAudio(),
      child: MaterialApp(
        home: HomePage(),
        // routes: {
        //   '/': (context) => HomePage(),
        //   '/second': (context) => SecondPage(),
        // },
        debugShowCheckedModeBanner: true,
      ),
    );
  }
}
