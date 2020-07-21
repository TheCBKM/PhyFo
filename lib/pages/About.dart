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
                  Text('''
✓ PhyFo is an innovative tool that enables you to find your physiotherapist and get the best solution for your sufferings at the COMFORT OF YOUR HOME.\n
✓ We provide individualised treatments and comprehensive action plans for all our patients with better understandings.\n 
✓ We strive on correcting the actual cause of pain and provide a long lasting solution to your problem\n.
✓ With PhyFo, you get your specified exercise videos on your profile.\n 
✓ You get constant follow ups from the expert physiotherapist.\n
✓ Free Health Advise column for problem related queries.\n 
✓ At affordable prices.\n
✓ We believe in Precautions better than cure, BE ONE STEP AHEAD AND CHOOSE PhyFo 😊\n\n''')
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
                  Column(
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
                        icon: Icon(Icons.phone,
                            color: Theme.of(context).primaryColor),
                        label: Text(
                          "Call Us",
                          style:
                              TextStyle(color: Theme.of(context).primaryColor),
                        ),
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
                        icon: Icon(Icons.launch,
                            color: Theme.of(context).primaryColor),
                        label: Text(
                          "WhatsApp",
                          style:
                              TextStyle(color: Theme.of(context).primaryColor),
                        ),
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
                        icon: Icon(Icons.insert_emoticon,
                            color: Theme.of(context).primaryColor),
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
                        icon: Icon(Icons.message,
                            color: Theme.of(context).primaryColor),
                        label: Text("FaceBook"),
                      ),
                      FlatButton.icon(
                        onPressed: () async {
                          const url =
                              'https://www.youtube.com/channel/UC9ho59o_8YkQe6X37KWDf7w?disable_polymer=true';
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        icon: Icon(Icons.videocam,
                            color: Theme.of(context).primaryColor),
                        label: Text("YouTube"),
                      ),
                      FlatButton.icon(
                        onPressed: () async {
                          const url = 'https://twitter.com/ForcePhysio';
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        icon: Icon(Icons.brightness_1,
                            color: Theme.of(context).primaryColor),
                        label: Text("Twitter"),
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
                          style: TextStyle(
                              fontSize: 12,
                              color: Theme.of(context).primaryColor),
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
                          style: TextStyle(
                              fontSize: 12,
                              color: Theme.of(context).primaryColor),
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
                        label: Text("CBKM.IN",
                            style: TextStyle(
                                fontSize: 12,
                                color: Theme.of(context).primaryColor)),
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
