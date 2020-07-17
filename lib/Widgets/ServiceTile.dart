import 'package:flutter/material.dart';
import 'package:phyfo/OurStore.dart';
import 'package:provider/provider.dart';
import 'package:transparent_image/transparent_image.dart';

class ServiceTile extends StatelessWidget {
  final String title;
  final String desc1;
  final String desc2;
  final String img;
  ServiceTile(this.title, this.desc1, this.desc2, this.img);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _btmsheet(context);
      },
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image: img,
              ),
              title: Text(title),
              subtitle: RichText(
                overflow: TextOverflow.ellipsis,
                strutStyle: StrutStyle(fontSize: 12.0),
                text: TextSpan(
                    style: TextStyle(color: Colors.black), text: desc1),
              ),
            ),
            ButtonBar(
              children: <Widget>[
                FlatButton.icon(
                  icon: Icon(Icons.bookmark),
                  label: Text("Book appointment"),
                  onPressed: () {
                    Provider.of<OurStore>(context, listen: false).changeView(1);
                  },
                ),
                FlatButton.icon(
                  icon: Icon(Icons.search),
                  label: Text("Read More"),
                  onPressed: () {
                    _btmsheet(context);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _btmsheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext ctx) {
          return Container(
              padding: EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height / 2,
              child: ListView(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                            color: Theme.of(context).primaryColorDark,
                            fontSize: 15),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.cancel,
                          color: Theme.of(context).accentColor,
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.black,
                    height: 10,
                    thickness: 2,
                    indent: 0,
                    endIndent: 0,
                  ),
                  Text(
                    '$desc1\n\n$desc2',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  FlatButton.icon(
                    icon: Icon(Icons.bookmark_border),
                    label: Text("Book appointment"),
                    onPressed: () {
                      Navigator.of(context).pop();
                      Provider.of<OurStore>(context, listen: false)
                          .changeView(1);
                    },
                  )
                ],
              ));
        });
  }
}
