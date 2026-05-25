class WeatherModel
{
 final String date;
  final double temp;
  final double minTemp;
  final double maxTemp; 
  final String WeatherStateName;

  WeatherModel({required this.date,required this.temp,required this.minTemp,required this.maxTemp,required this.WeatherStateName});
  
factory WeatherModel.fromJosn(dynamic DatafromJosn)// factory job return object of same class or extendchild and solution problem nun-nullble
{
  var josndata=DatafromJosn['forecast']['forecastday'][0]['day'];
 
      return WeatherModel(
        date: DatafromJosn['location']['localtime'],
       temp: josndata['avgtemp_c'],
        minTemp: josndata['mintemp_c'],
         maxTemp: josndata['maxtemp_c'],
          WeatherStateName: josndata['condition']['text']);
}

//@override
  //String toString() {
    // TODO: implement toString
  //  return 'temp=$temp ';
//  }
  
}