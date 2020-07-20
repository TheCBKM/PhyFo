import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
          child: Card(
            margin: EdgeInsets.all(30),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Image(
                        height: 40,
                        image: AssetImage("assets/pf2.png"),
                      ),
                      Text(
                        'PhyFo: The Physio Force',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'PhyFo is an App-based innovative application that enables you to find your physiotherapist and get the best solution for your sufferings at the COMFORT OF YOUR HOME.\n\nWe provide individualized treatments and comprehensive action plans for all our patients. Our team will help you know your problem and solution in the language you understand, no more heavy medical terms to scare you.\n\nWe strive on correcting the actual cause of pain and provide a long-lasting solution to your problem.\n\nWith PhyFo, you get your individualized treatment protocol, specified exercise videos are made available which you can refer anytime on your profile and get constant follow-ups from the expert physiotherapist and can send feedback as well.\n\nYou can also put your problem-related query in our Free Health Advice column to get a generalized view.\n\nWe believe in Precautions better than cure, BE ONE STEP AHEAD AND CHOOSE PhyFo 😊',
                  ),
                ],
              ),
            ),
          ),
        ),
        Center(
          child: Card(
            margin: EdgeInsets.all(30),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.help),
                      Text(
                        'Contact Us ',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FlatButton.icon(
                        onPressed: () async {
                          const url = 'tel:+919131147219';
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        icon: Icon(Icons.phone),
                        label: Text("Call Us"),
                      ),
                      FlatButton.icon(
                        onPressed: () async {
                          const url =
                              'https://api.whatsapp.com/send?phone=919131147219';
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        icon: Icon(Icons.launch),
                        label: Text("WhatsApp"),
                      ),
                      FlatButton.icon(
                        onPressed: () async {
                          const url =
                              'https://instagram.com/the_physio_force?igshid=304gsn1wo4hr';
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        icon: Icon(Icons.insert_emoticon),
                        label: Text("Instagram"),
                      ),
                      FlatButton.icon(
                        onPressed: () async {
                          const url =
                              'https://m.facebook.com/The-Physio-Force-PhyFo-110314247427532/';
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        icon: Icon(Icons.message),
                        label: Text("FaceBook"),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Center(
          child: Card(
            margin: EdgeInsets.all(30),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(
                    height: 30,
                  ),
                  Flexible(
                    child: Text(
                      "User's paradise Developer's offering ",
                    ),
                  ),
                  Text("CBKM"),
                  ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FlatButton.icon(
                        onPressed: () async {
                          const url = 'tel:+919340573858';
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        icon: Icon(
                          Icons.phone,
                          size: 12,
                        ),
                        label: Text(
                          "Call Us",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                      FlatButton.icon(
                        onPressed: () async {
                          const url =
                              'https://api.whatsapp.com/send?phone=919340573858';
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        icon: Icon(
                          Icons.launch,
                          size: 12,
                        ),
                        label: Text(
                          "WhatsApp",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                      FlatButton.icon(
                        onPressed: () async {
                          const url = 'http://cbkm.in';
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        icon: Icon(
                          Icons.open_in_new,
                          size: 12,
                        ),
                        label: Text("CBKM.IN", style: TextStyle(fontSize: 12)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
