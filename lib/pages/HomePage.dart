import 'package:flutter/material.dart';
import 'package:phyfo/OurStore.dart';
import 'package:phyfo/pages/About.dart';
import 'package:phyfo/pages/Order.dart';
import 'package:phyfo/pages/Services.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    int i = Provider.of<OurStore>(context).getVIew;
    Widget currentScreen;
    if (i == 0)
      currentScreen = Services();
    else if (i == 1)
      currentScreen = Order();
    else
      currentScreen = About();
    print(i);
    return Scaffold(
      appBar: AppBar(
        title: Text("PhyFo"),
      ),
      body: currentScreen,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).accentColor,
        onTap: (val) {
          Provider.of<OurStore>(context, listen: false).changeView(val);
        },
        currentIndex: i,
        items: [
          BottomNavigationBarItem(
            title: Text("Services"),
            icon: Icon(Icons.apps),
          ),
          BottomNavigationBarItem(
            title: Text("Book"),
            icon: Icon(Icons.bookmark),
          ),
          BottomNavigationBarItem(
            title: Text("About"),
            icon: Icon(Icons.info),
          )
        ],
      ),
    );
  }
}
