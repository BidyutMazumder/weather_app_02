
class Weather_Api
{
  String? temp;
  String? humidity;
  String? air_speed;
  String? description;
  String? main;
  Weather_Api({this.temp, this.humidity, this.air_speed, this.description, this.main});

  //method
  Weather_Api.fromJson(Map<String, dynamic> json)
  {
    temp = json["main"]["temp"];
    humidity = json["main"]["humidity"];
    air_speed = json["wind"]["speed"];
    description  = json["weather"]["0"]["description"];
    main = json["main"];

  }


}