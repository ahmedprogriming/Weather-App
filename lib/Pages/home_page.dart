import 'package:flutter/material.dart';
import 'package:weather_app/Pages/SerachPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      appBar: AppBar(
        actions: [
          IconButton(onPressed: ()
          {
         Navigator.push(context,MaterialPageRoute(builder:(context)
         {
          return SearchPage();
         }));
          }, 
          icon: Icon(Icons.search),color: Colors.white,)
        ],
        title: Text("Weather App",style:TextStyle(color: Colors.white) ,),
        backgroundColor: Color(0xff1F9AFF),
      ),
 body: Center(
       
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
      ),
    );
     
     
    
  }
}
