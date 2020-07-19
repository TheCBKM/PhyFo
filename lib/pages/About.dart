import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        padding: EdgeInsets.all(10),
        children: [
          ListTile(
            leading: Icon(
              Icons.check_box,
              color: Theme.of(context).accentColor,
            ),
            title: Text(
              'We Provide Panel of physiotherapist',
              style: TextStyle(color: Theme.of(context).primaryColorDark),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.check_box,
              color: Theme.of(context).accentColor,
            ),
            title: Text(
              'We Provide Better monitoring',
              style: TextStyle(color: Theme.of(context).primaryColorDark),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.check_box,
              color: Theme.of(context).accentColor,
            ),
            title: Text(
              '24/7 Patient follow ups',
              style: TextStyle(color: Theme.of(context).primaryColorDark),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.check_box,
              color: Theme.of(context).accentColor,
            ),
            title: Text(
              'Maintainance of Patient Records',
              style: TextStyle(color: Theme.of(context).primaryColorDark),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.check_box,
              color: Theme.of(context).accentColor,
            ),
            title: Text(
              'Remote check ups',
              style: TextStyle(color: Theme.of(context).primaryColorDark),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.check_box,
              color: Theme.of(context).accentColor,
            ),
            title: Text(
              'Exercise videos made available to patient',
              style: TextStyle(color: Theme.of(context).primaryColorDark),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border.all(width: 1),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Text(
                "In this COVID-19 pandemic we will use\nGloves\n3 layer mask\nhead cap\nface shield	gloves\nsanitized appron\nonline Virtual Treatments"),
          ),
          ListTile(
            leading: Icon(
              Icons.check_box,
              color: Theme.of(context).primaryColorDark,
            ),
            title: Text(
              'Better monitoring through tele health care',
              style: TextStyle(color: Theme.of(context).primaryColorDark),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.check_box,
              color: Theme.of(context).primaryColorDark,
            ),
            title: Text(
              'Benefit of physiotherapy and equipments at the comfort of home',
              style: TextStyle(color: Theme.of(context).primaryColorDark),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.check_box,
              color: Theme.of(context).primaryColorDark,
            ),
            title: Text(
              'Complete restorative therapy',
              style: TextStyle(color: Theme.of(context).primaryColorDark),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.check_box,
              color: Theme.of(context).primaryColorDark,
            ),
            title: Text(
              'Focus on precautions better than cure',
              style: TextStyle(color: Theme.of(context).primaryColorDark),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.check_box,
              color: Theme.of(context).primaryColorDark,
            ),
            title: Text(
              'Everything at affordable prices',
              style: TextStyle(color: Theme.of(context).primaryColorDark),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.check_box,
              color: Theme.of(context).primaryColorDark,
            ),
            title: Text(
              'Patients Testimonials and videos',
              style: TextStyle(color: Theme.of(context).primaryColorDark),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.check_box,
              color: Theme.of(context).primaryColorDark,
            ),
            title: Text(
              'Treatment protocol videos made available to patients',
              style: TextStyle(color: Theme.of(context).primaryColorDark),
            ),
          ),
          FlatButton.icon(
            onPressed: () async {
              const url = 'tel:+918959859526';
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
              const url = 'https://api.whatsapp.com/send?phone=918959859526';
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
            icon: Icon(Icons.launch),
            label: Text("Follows us on Instagram"),
          )
        ],
      ),
    );
  }
}
