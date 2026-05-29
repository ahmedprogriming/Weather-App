import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/Pages/SerachPage.dart';
import 'package:weather_app/Providers/weather_Provider.dart';
import 'package:weather_app/models/wether_model.dart';

class HomePage extends StatefulWidget {
   HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {

  void uiUpdate()
{
 setState(()
 {
  
 });
}

WeatherModel? WeatherData;
  @override
  Widget build(BuildContext context) {
    WeatherData= Provider.of<WeatherProdviders>(context).Weatherget;
    return  Scaffold(
      
      appBar: AppBar(
        actions: [
          IconButton(onPressed: ()
          {
         Navigator.push(context,MaterialPageRoute(builder:(context)
         {
          return SearchPage(uiUpdate:uiUpdate , );
         }));
          }, 
          icon: Icon(Icons.search),color: Colors.white,)
        ],
        title: Text("Weather App",style:TextStyle(color: Colors.white) ,),
        backgroundColor: Color(0xff1F9AFF),
      ),
 body:WeatherData == null? Center(
       
        child: Column(
          
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                'there is no weather 😔 start',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
            Text(
              'searching now 🔍',
              style: TextStyle(
                fontSize: 25,
              ),
            )
          ],
        ),
      ): Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            WeatherData!.getColors(),
               WeatherData!.getColors()[300]!,
                WeatherData!.getColors()[100]!,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           const   Spacer(flex: 3,),
            Text(
              Provider.of<WeatherProdviders>(context).Cityname!,
              style: TextStyle(fontSize: 32,
              fontWeight:FontWeight.bold,)
              ),
                Text(
              "Update at: ${WeatherData!.date.hour}:${WeatherData!.date.minute}",
              style: TextStyle(fontSize: 18,
              )
              ),
              Spacer(flex: 1,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(WeatherData!.getImage()),
                    Text(
              "${WeatherData!.temp.toInt()}",
              style: TextStyle(fontSize: 32,
              fontWeight: FontWeight.bold,
              )
              ),
              
              Column(
                children: [
                   Text(
              "MinTemp:${WeatherData!.minTemp.toInt()}",
              style: TextStyle(fontSize: 14,
            
              )
              ),
              Text(
              "MaxTemp:${WeatherData!.maxTemp.toInt()}",
              style: TextStyle(fontSize: 14,
            
              )
              ),
                ],
              )
                ],
              ),
               Spacer(flex: 1,),
              Column(children: [
           Text(
              WeatherData?.WeatherStateName ??'not data',
              style: TextStyle(fontSize: 34,
              fontWeight:FontWeight.bold,)
              ),
              ],),
               Spacer(flex: 5,),
          ],

          
        ),
        


      )
    );
     
     
    
  }
}
