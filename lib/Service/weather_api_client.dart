
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weather_app_02/Model/weather_model.dart';


class WeatherApiClient{
  Future <Weather_Api> getData(String location) async{
    var endpoint = Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=$location&appid=6b3079630fe19fa55fff58fb4df2bc69");
    http.Response response = await http.get(endpoint);
    var body = jsonDecode(response.body);
    print(response.body);
    return Weather_Api.fromJson(body);
  }

}