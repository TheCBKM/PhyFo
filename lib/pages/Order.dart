import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:phyfo/Widgets/MyForm.dart';
import 'package:transparent_image/transparent_image.dart';

class Order extends StatefulWidget {
  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
  bool _isLoading = false;
  bool _isDone = false;
  String uid = "";
  @override
  Widget build(BuildContext context) {
    void submitFn(
        String name, String phone, String address, String problem) async {
      print(name);
      print(phone);
      print(address);
      print(uid);
      print(problem);
      setState(() {
        _isLoading = true;
      });
      await Firestore.instance
          .collection("orders")
          .document(Timestamp.now().toDate().toString())
          .setData({
        'name': name,
        'phone': phone,
        'prob': address,
        'problem': problem,
        'time': Timestamp.now(),
        "uid": uid,
      });
      setState(() {
        _isLoading = false;
        _isDone = true;
      });
    }

    return FutureBuilder(
        future: FirebaseAuth.instance.currentUser(),
        builder: (ctx, future) {
          if (future.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          uid = future.data.uid;
          print(future.data.uid);
          return StreamBuilder(
              stream: Firestore.instance.collection("Services").snapshots(),
              builder: (context, snapshot) {
                if (future.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                }
                if (!snapshot.hasData) {
                  return Center(child: CircularProgressIndicator());
                }
                if (snapshot.hasData) {
                  final documents = snapshot.data.documents;
                  print(documents);
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListView(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Please fill the form bellow\nWe get in touch with you in 24 hours",
                              style: TextStyle(
                                  color: Theme.of(context).primaryColorDark,
                                  fontSize: (MediaQuery.of(context).size.width *
                                          0.8) /
                                      22),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        if (_isDone)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Sit back and relax we have recorded you response.\nWe will call you soon.....",
                                style: TextStyle(
                                    color: Theme.of(context).primaryColorDark,
                                    fontSize:
                                        (MediaQuery.of(context).size.width *
                                                0.8) /
                                            22),
                              )
                            ],
                          ),
                        SizedBox(
                          height: 20,
                        ),
                        !_isDone
                            ? !_isLoading
                                ? MyForm(submitFn, documents)
                                : Center(child: CircularProgressIndicator())
                            : Center(
                                child: Image.asset(
                                  "assets/done.png",
                                  width:
                                      MediaQuery.of(context).size.width * 0.8,
                                ),
                              )
                      ],
                    ),
                  );
                }
              });
        });
  }
}
