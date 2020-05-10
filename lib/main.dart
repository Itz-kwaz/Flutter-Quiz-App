import 'package:flutter/material.dart';
import 'package:quizapp/last_screen.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:quizapp/main_screen.dart';

void main(){runApp(
    MaterialApp(
      theme: ThemeData(
      fontFamily: 'ComicNeue'
    ),
  debugShowCheckedModeBanner: false,
  home: MyApp(),
)
);
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();

}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
        loaderColor: Colors.blue,
        backgroundColor: Colors.white,
        seconds: 10,
        title : Text('The Philosophy Quiz',
        style: TextStyle(color: Colors.blue,
          fontSize: 30.0,
          fontWeight: FontWeight.bold)
        ),
        navigateAfterSeconds: MainScreen()
    );
  }
}


