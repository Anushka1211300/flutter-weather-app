// import 'package:flutter/material.dart';
// import 'package:introduction_screen/introduction_screen.dart';
// import 'package:weather_app/intropage.dart';

// class SplashScreenFirst extends StatefulWidget {
//   @override
//   _SplashScreenFirstState createState() => _SplashScreenFirstState();
// }

// class _SplashScreenFirstState extends State<SplashScreenFirst> {
//   Widget _buildImage(String assetName) {
//     return Align(
//       child: Image.asset('assets/$assetName.jpg', width: 350.0),
//       alignment: Alignment.bottomCenter,
//     );
//   }
//   @override
//   Widget build(BuildContext context) {
//     const bodyStyle = TextStyle(fontSize: 19.0, color: Colors.black);
//     const pageDecoration = const PageDecoration(
//       titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700, color: Colors.black),
//       bodyTextStyle: bodyStyle,
//       descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
//       pageColor: Colors.white10,
//       imagePadding: EdgeInsets.zero,
//     );
//     return IntroductionScreen(pages: [
//       PageViewModel(
//         title: "Hourly Forecast",
//         body:
//         "Provides the hourly weather changes.",
//         image: _buildImage('img1'),
//         decoration: pageDecoration,
//       ),
//       PageViewModel(
//         title: "Current Location",
//         body:
//         "Provides the whole weather of your current location.",
//         image: _buildImage('img2'),
//         decoration: pageDecoration,
//       ),
//       PageViewModel(
//         title: "hell",
//         body:
//         "Download the Stockpile app and master the market with our mini-lesson.",
//         image: _buildImage('img3'),
//         decoration: pageDecoration,
//       ),
//     ], onDone: (){
//       Navigator.of(context).push(
//         MaterialPageRoute(builder: (_) => MainPage()),
//       );
//     },
//       done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
//       dotsDecorator: const DotsDecorator(
//         size: Size(10.0, 10.0),
//         color: Color(0xFFBDBDBD),
//         activeSize: Size(22.0, 10.0),
//         activeShape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.all(Radius.circular(25.0)),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
//import 'package:weather_app/Screens/firstscreen.dart';
import 'package:weather_app/firstscreen.dart';

class SplashScreenFirst extends StatefulWidget {
  @override
  _SplashScreenFirstState createState() => _SplashScreenFirstState();
}

class _SplashScreenFirstState extends State<SplashScreenFirst> {
  Widget _buildImage(String assetName) {
    return Align(
      child: Image.asset('assets/$assetName.jpg', width: 350.0),
      alignment: Alignment.bottomCenter,
    );
  }
  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0, color: Colors.black);
    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700, color: Colors.black),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white10,
      imagePadding: EdgeInsets.zero,
    );
    return IntroductionScreen(pages: [
      PageViewModel(
        title: "Hourly Forecast",
        body:
        "Provides the hourly weather changes.",
        image: _buildImage('img1'),
        decoration: pageDecoration,
      ),
      PageViewModel(
        title: "Current Location",
        body:
        "Provides the whole weather of your current location.",
        image: _buildImage('img2'),
        decoration: pageDecoration,
      ),
      PageViewModel(
        title: "hell",
        body:
        "Download the Stockpile app and master the market with our mini-lesson.",
        image: _buildImage('img3'),
        decoration: pageDecoration,
      ),
    ], onDone: (){
      Navigator.of(context).push(
        MaterialPageRoute(builder: (_) => FirstScreen()),
      );
    },
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}




