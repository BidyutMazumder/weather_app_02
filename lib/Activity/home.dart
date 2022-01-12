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
  Weather_Api data = Weather_Api(temp: "", humidity: "", air_speed: "", description: "", main: "", location: "");

  Future<void> getData() async {
    data = await client.getData("Dhaka");
  }

  @override
  void initState() {
    print(data.temp);
    super.initState();
  }


  Widget build(BuildContext context) {
    var S_height = MediaQuery.of(context).size.height;
    var S_width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: AppBar(
          backgroundColor: Colors.blue,
        ),
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.blue,
                Colors.lightBlueAccent,
              ],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: S_width * 0.025, horizontal: S_height * 0.025),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  margin: EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24)),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          print("Search Me");
                        },
                        child: Container(
                          child: Icon(
                            Icons.search,
                            color: Colors.blueGrey,
                          ),
                          margin: EdgeInsets.fromLTRB(3, 0, 7, 0),
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none, hintText: "Search"),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: S_height * .15,
                  width: S_width * .95,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text("${data.temp}"),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: S_height * .30,
                  width: S_width * .95,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text("hi"),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: S_height * .2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey,
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text("hi"),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Container(
                        height: S_height * .2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey,
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text("hi"),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
