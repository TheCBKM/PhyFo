import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Please wait"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            height: MediaQuery.of(context).size.width/2,
            image: AssetImage("assets/pf1.png"),
          ),
          Container(
            height: 30,
          ),
          CircularProgressIndicator(),
          Container(
            height: 30,
          ),
          Text("PhyFo is Loading for you ....")
        ],
      ),
    );
  }
}
