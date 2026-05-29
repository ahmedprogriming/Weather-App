import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/Pages/home_page.dart';
import 'package:weather_app/Providers/weather_Provider.dart';
import 'package:weather_app/models/wether_model.dart';

void main() {
  runApp(ChangeNotifierProvider(
     create: (context) 
      {
        return WeatherProdviders();
      },
    child: const WeatherApp()));
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Provider.of<WeatherProdviders>(context).Weatherget == null ? Colors.blue
:  Provider.of<WeatherProdviders>(context).Weatherget!.getColors()     ),
       debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
     
}
}

