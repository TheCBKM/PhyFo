import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Drop extends StatefulWidget {
  final List<DocumentSnapshot> documents;
  final void Function(String) drop;
  Drop(this.documents, this.drop);
  @override
  _DropState createState() => _DropState();
}

class _DropState extends State<Drop> {
  final List<DropdownMenuItem> problems = [];
  String _problem;
  @override
  void initState() {
    for (int i = 0; i < widget.documents.length; i++) {
      problems.add(DropdownMenuItem(
          value: widget.documents[i]["Title"],
          child: Text(widget.documents[i]["Title"])));
    }
    problems
        .add(DropdownMenuItem(value: "Don't Know", child: Text("Don't Know")));
    _problem = "Don't Know";

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DropdownButton(
            value: _problem,
            icon: Icon(Icons.add),
            hint: Text("Please choose one"),
            onChanged: (val) {
              print(val);
              setState(() {
                this._problem = val;
              });
              widget.drop(val);
            },
            items: problems),
      ],
    );
  }
}
