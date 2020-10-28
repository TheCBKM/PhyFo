import 'dart:async';

import 'package:flutter/material.dart';
import 'package:phyfo/OurStore.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  @override
  Splash createState() => Splash();
}

class Splash extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    new Timer(new Duration(milliseconds: 200), () {
      checkFirstSeen();
    });
  }

  Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool _seen = (prefs.getBool('seen') ?? false);
    print(_seen);

    if (_seen) {
      Timer(Duration(seconds: 4),
          () => Provider.of<OurStore>(context, listen: false).changeView(0));
    } else {
      Timer(Duration(seconds: 4),
          () => Provider.of<OurStore>(context, listen: false).changeView(-2));
    }
  }

  @override
  Widget build(BuildContext context) {
    var image1 = Image(image: AssetImage('assets/pf2.png'), height: 100);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "PhyFo",
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 30,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30,
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
            ),
            SizedBox(
              height: 200,
            ),
            Text(
              "FROM CBKM ",
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 10,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ), //<- place where the image appears
    );
  }
}
