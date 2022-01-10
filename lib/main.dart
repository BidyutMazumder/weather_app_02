import 'package:flutter/material.dart';
import 'package:weather_app_02/Activity/loading.dart';
import 'package:weather_app_02/Activity/home.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/" : (context) => Loading(),
        "home" : (context) => Home(),

      },
    );
  }
}
