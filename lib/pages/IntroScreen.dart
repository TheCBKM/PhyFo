import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:phyfo/OurStore.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  List<Slide> slides = new List();

  @override
  void initState() {
    super.initState();

    slides.add(
      new Slide(
        title: "PhyFo ",
        subtitle: "The Physio Force",
        description:
            "We understand it can be challenging to attend traditional clinics when you’re in pain, have transport difficulties or care for young children. We recognized the growing need for a professional and reliable home-visit physiotherapy services. So, here we come with mobile Physiotherapy at the comfort of your home, under your family’s support and supervision.",
        pathImage: "assets/i1.jpg",
        backgroundColor: Color(0xfff5a623),
      ),
    );
    slides.add(
      new Slide(
        title: "PhyFo",
        subtitle: "The Physio Force",
        description:
            "We ensure to make your Treatment fast, enjoyable,comfortable and of course, SUCCESSFUL as possible.",
        pathImage: "assets/i2.jpg",
        backgroundColor: Color(0xff203152),
      ),
    );
    slides.add(
      new Slide(
        title: "PhyFo",
        subtitle: "The Physio Force",
        description: "Saying Goodbye to pain is just a click away..",
        pathImage: "assets/i3.jpg",
        backgroundColor: Color(0xff9932CC),
      ),
    );
  }

  void onDonePress() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool _seen = (prefs.getBool('seen') ?? false);
    print(_seen);
    Provider.of<OurStore>(context, listen: false).changeView(0);
    prefs.setBool('seen', true);
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      slides: this.slides,
      onDonePress: this.onDonePress,
    );
  }
}
