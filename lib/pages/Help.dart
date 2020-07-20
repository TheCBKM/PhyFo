import 'package:flutter/material.dart';
import 'package:phyfo/Widgets/FAQ.dart';

class Help extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("FAQs"),
        ),
        body: FAQ());
  }
}
