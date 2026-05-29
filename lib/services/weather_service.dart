import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/models/wether_model.dart';
class WeatherService 
{
 String BaseUrl='http://api.weatherapi.com/v1';

 String ApiKey='81ebdb5d8e874044b31110511262005';
 Future<WeatherModel?> getWeather({required String nameCity} )async
 {
  WeatherModel? weather;
   try{
Uri url=Uri.parse('$BaseUrl/forecast.json?key=$ApiKey&q=$nameCity&days=7')  ;
  
  http.Response respones= await http.get(url);

  Map<String,dynamic> data=jsonDecode(respones.body);

   weather=WeatherModel.fromJosn(data);
   }
   catch(ex)
   {
      print(ex);
   }

      return weather;
 }

}