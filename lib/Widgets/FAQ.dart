import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FAQ extends StatefulWidget {
  @override
  _FAQState createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: Firestore.instance
            .collection("faq")
            .orderBy("p", descending: false)
            .snapshots(),
        builder: (ctx, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          final documents = snapshot.data.documents;
          return ListView.builder(
              itemCount: documents.length,
              itemBuilder: (context, i) {
                return Center(
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
                              Flexible(
                                child: Text(
                                  documents[i]["q"],
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(documents[i]["a"]),
                        ],
                      ),
                    ),
                  ),
                );
              });
        });
  }
}
