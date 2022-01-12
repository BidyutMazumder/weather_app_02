
class Weather_Api
{
  late String location;
  late String temp;
  late String humidity;
  late String air_speed;
  late String description;
  late String main;
  Weather_Api({required this.temp, required this.humidity, required this.air_speed, required this.description, required this.main, required this.location});

  //method
  Weather_Api.fromJson(Map<String, dynamic> json)
  {
    temp = json["main"]["temp"];
    humidity = json["main"]["humidity"];
    air_speed = json["wind"]["speed"];
    description  = json["weather"]["0"]["description"];
    main = json["main"];
    location = json["sys"]["name"];

  }


}