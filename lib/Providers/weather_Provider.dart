import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/models/wether_model.dart';

class WeatherProdviders extends ChangeNotifier
{
  WeatherModel? _WeatherData;
  String? Cityname;

  set Weatherset(WeatherModel? weather)
  {
_WeatherData=weather;
notifyListeners();
  }

  WeatherModel? get Weatherget => _WeatherData;
}