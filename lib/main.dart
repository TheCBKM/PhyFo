// export PATH="$PATH:`pwd`/flutter/bin"

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:phyfo/OurStore.dart';
import 'package:phyfo/pages/HomePage.dart';
import "package:phyfo/pages/SplashScreen.Dart";
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  final _auth = FirebaseAuth.instance;
  final FirebaseMessaging fbm = FirebaseMessaging();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PhyFo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Color.fromRGBO(0, 152, 158, 1),
        accentColor: Colors.amber[700],
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ChangeNotifierProvider(
          create: (context) => OurStore(),
          child: StreamBuilder(
            stream: FirebaseAuth.instance.onAuthStateChanged,
            builder: (ctx, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting)
                return SplashScreen();
              if (snapshot.hasData) return HomePage();
              fbm.getToken().then(print);
              fbm.requestNotificationPermissions();
              fbm.subscribeToTopic('all');
              fbm.configure(onMessage: (msg) {
                print(msg);
                return;
              }, onLaunch: (msg) {
                print(msg);
                return;
              }, onResume: (msg) {
                print(msg);
                return;
              });
              _auth.signInAnonymously();
              print("anaomously");
              return SplashScreen();
            },
          )),
    );
  }
}
