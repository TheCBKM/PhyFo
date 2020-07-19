import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SizedBox.expand(
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: (MediaQuery.of(context).size.height * 0.2),
              vertical: (MediaQuery.of(context).size.width * 0.6)),
          decoration: BoxDecoration(color: Colors.blueAccent),
          child: CircularProgressIndicator(),
        ),
      ),
    ));
  }
}
