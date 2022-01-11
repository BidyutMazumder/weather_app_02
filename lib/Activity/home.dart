import 'package:flutter/material.dart';
import 'package:weather_app_02/Model/weather_model.dart';
import 'package:weather_app_02/Service/weather_api_client.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  WeatherApiClient client = WeatherApiClient();
  Weather_Api data = Weather_Api();

  Future<void>getData()async{
    data = await client.getData("Dhaka");
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Activity"),
      ),
      body: SafeArea(
        child: Column(
          children: [

          ],
        ),


      ),
    );
  }
}
