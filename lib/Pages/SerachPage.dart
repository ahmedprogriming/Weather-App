import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/Providers/weather_Provider.dart';
import 'package:weather_app/models/wether_model.dart';
import 'package:weather_app/services/weather_service.dart';

class SearchPage extends StatelessWidget {
   SearchPage({this.uiUpdate, super.key});

VoidCallback? uiUpdate;
String? Cityname;
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
 appBar: AppBar
 (
 iconTheme: IconThemeData(color: Colors.white),
  backgroundColor: Color(0xffFFAD3B),
  title: Text("Search a City",style: TextStyle(color: Colors.white),),
 ),
 body:Center(
   child: Padding(
     padding: const EdgeInsets.symmetric(horizontal: 16),
     child: TextField(
      onChanged: (data) 
      {
        Cityname=data;
      },
      onSubmitted: (data) async
      {
        Cityname=data;

        WeatherService service= WeatherService();
WeatherModel? weather=   await service.getWeather(nameCity: Cityname!);
    
      Provider.of<WeatherProdviders>(context,listen: false).Weatherset=weather;
       Provider.of<WeatherProdviders>(context,listen: false).Cityname=Cityname;
       
       Navigator.pop(context);
      },
      decoration: InputDecoration(
        hintText: "Enter name a city",
        border: OutlineInputBorder(),
        suffix: GestureDetector(child: Icon(Icons.search)
        ,onTap:()async
        {  
          WeatherService service= WeatherService();
WeatherModel? weather=   await service.getWeather(nameCity: Cityname!);
    
      Provider.of<WeatherProdviders>(context,listen: false).Weatherset=weather;
       Provider.of<WeatherProdviders>(context,listen: false).Cityname=Cityname;
       
       Navigator.pop(context);

        } ,),
        label: Text('Search'),
        contentPadding: EdgeInsets.symmetric(vertical: 32,horizontal: 24)
      ),
     ),
   ),
 ),
    );
  }
}


