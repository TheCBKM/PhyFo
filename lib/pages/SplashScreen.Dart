import 'dart:async';

import 'package:flutter/material.dart';
import 'package:phyfo/OurStore.dart';
import 'package:phyfo/pages/HomePage.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  @override
  Splash createState() => Splash();
}

class Splash extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 6),
        () => Provider.of<OurStore>(context, listen: false).changeView(0));

    ; //<- Creates an object that fetches an image.
    var image1 = Image(
        image: AssetImage('assets/pf2.png'),
        height: 100); //<- Creates a widget that displays an image.
    var image2 = Image(
        image: AssetImage('assets/bg.jpg'),
        height: MediaQuery.of(context).size.height * 0.4);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "PhyFo:The Phisio Force is at your service ",
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(color: Colors.white),
              child: Center(child: image2),
            ),
            Container(
              decoration: BoxDecoration(color: Colors.white),
              child: Center(
                child: image1,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: CircularProgressIndicator(),
            )
          ],
        ),
      ), //<- place where the image appears
    );
  }
}
