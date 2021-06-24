// import 'package:flutter/material.dart';

// class MainPage extends StatefulWidget{
//   @override
//    _MainPageState createState() => _MainPageState();
// }


// class _MainPageState extends State<MainPage> {
//   var cityname = "San Francisco";
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.greenAccent.shade200,
//    //   body: SplashScreen()
//       body: SingleChildScrollView(
//         child: Column(children: [
          
//             Center(
//               heightFactor: 3.0,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Icon(Icons.location_on,
//                   size: 30.0),
//                   SizedBox(width:20.0),
//                    Spacer(flex: 2,),
//                   Text("$cityname"
//                   ,style: TextStyle(
//                     fontSize: 30.0,
//                     fontWeight: FontWeight.bold
//                   ),),
//                   SizedBox(width: 5.0),
//                    Spacer(flex: 1),
//                   Icon(Icons.arrow_downward_outlined,
//                   size: 30.0),
//                   SizedBox(width: 20.0),
//                   Spacer(flex: 3,),
//                   Icon(Icons.calendar_today_outlined,
//                   size: 30.0)
//                 ],
//               ),

//             ),
//            Center(
//              child: Image(image: AssetImage('assets/img5.jpg'),
//              height: 150.0,
//              width: 150.0),
//            ),
         
//           //  Center(child: Column(
//           //    children: [
//           //      SplashScreen(),
//           //    ],
//           //  ))
           
//         ],),
//       ),
//     );
//   }
// }
import 'package:geolocator/geolocator.dart';
import 'package:weather_app/Services/server.dart';
import 'package:http/http.dart';
import 'dart:convert' as convert;
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  dynamic initCity = '';
  @override
  Widget build(BuildContext context) {
    void getCurrentLocation() async{
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      print("Latitude is ${position.latitude}");
      print("Longitude is ${position.longitude}");
      Response response = await Server.callServer("https://api.openweathermap.org/data/2.5/forecast?lat=${position.latitude}&lon=${position.longitude}&appid=05d66eda95ade68392c3de299ff7647f");
      String json = response.body;
      print("JSON IS $json");
      var cityName = convert.jsonDecode(json)['city']['name'];
      print("CITY NAME IS $cityName");
      print("Init NAME $initCity");
      setState(() {
        initCity = cityName.toString();
        print("inside SetState $initCity");
        print(initCity.toString());
      });
    }
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: SafeArea(
        child: Row(
          children: [
            FloatingActionButton(
              onPressed: (){},
              child: IconButton(
                icon: Icon(Icons.location_on),
                onPressed: getCurrentLocation,
              ),
            ),
            Container(
              child: Text(initCity,
              style: TextStyle(
                color: Colors.white,
                fontSize: 32
               ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

