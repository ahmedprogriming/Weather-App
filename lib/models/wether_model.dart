import 'package:flutter/material.dart';

class WeatherModel
{
 final DateTime date;
  final double temp;
  final double minTemp;
  final double maxTemp; 
  final String WeatherStateName;

  WeatherModel({required this.date,required this.temp,required this.minTemp,required this.maxTemp,required this.WeatherStateName});
  
factory WeatherModel.fromJosn(dynamic DatafromJosn)// factory job return object of same class or extendchild and solution problem nun-nullble
{
  var josndata=DatafromJosn['forecast']['forecastday'][0]['day'];
 
      return WeatherModel(
        date:DateTime.parse(DatafromJosn['location']['localtime']) ,
       temp: josndata['avgtemp_c'],
        minTemp: josndata['mintemp_c'],
         maxTemp: josndata['maxtemp_c'],
          WeatherStateName: josndata['condition']['text']);
}

String getImage()
{
   if (WeatherStateName=='Sunny'||WeatherStateName=='Clear')
   {
  return 'assets/images/clear.png';
   }
  
  else if (WeatherStateName=='Cloud' ||
           WeatherStateName=='Overcast')
           {
  return 'assets/images/cloudy.png';
           }
  else if (WeatherStateName=='Rain' ||
           WeatherStateName=='Drizzle')
           {
 return 'assets/images/rainy.png';
           }
   

  else if (WeatherStateName=='Thunder' || WeatherStateName=='thunderstorm')
  {
   return 'assets/images/thunderstorm.png';
  }
 
  else if (WeatherStateName=='Snow' ||
           WeatherStateName=='Blizzard')
           {
 return 'assets/images/snow.png';
           }
   
  else if (WeatherStateName=='Mist' ||
           WeatherStateName=='Fog')
           {
  return 'assets/images/cloudy.png';
           }
  

  else if (WeatherStateName=='Wind')
  {
return 'assets/images/cloudy.png';
  }
    

  return 'assets/images/clear.png';
}

MaterialColor getColors()
{
   if (WeatherStateName=='Sunny'||WeatherStateName=='Clear')
   {
  return Colors.orange;
   }
  
  else if (WeatherStateName=='Cloud' ||
           WeatherStateName=='Overcast')
           {
  return Colors.blueGrey;
           }
  else if (WeatherStateName=='Rain' ||
           WeatherStateName=='Drizzle')
           {
 return Colors.blue;
           }
   

  else if (WeatherStateName=='Thunder' || WeatherStateName=='thunderstorm')
  {
   return Colors.blueGrey;
  }
 
  else if (WeatherStateName=='Snow' ||
           WeatherStateName=='Blizzard')
           {
 return Colors.grey;
           }
   
  else if (WeatherStateName=='Mist' ||
           WeatherStateName=='Fog')
           {
  return Colors.brown;
           }
  

  else if (WeatherStateName=='Wind')
  {
return Colors.indigo;
  }
    

  return Colors.yellow;
}


//@override
  //String toString() {
    // TODO: implement toString
  //  return 'temp=$temp ';
//  }
  
}