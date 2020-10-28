import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:phyfo/Widgets/Drop.dart';

class MyForm extends StatefulWidget {
  final void Function(String name, String phone, String address, String problem)
      submitFn;
  final List<DocumentSnapshot> documents;
  MyForm(this.submitFn, this.documents);
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    String _name = "";
    String _phone = "";
    String _address = "";
    String _problem = "NA";

    void drop(String s) {
      _problem = s;
    }

    void _trySubmit() {
      final isValid = _formKey.currentState.validate();
      // FocusScope.of(context).unfocus();

      if (isValid) {
        _formKey.currentState.save();
        widget.submitFn(_name.trim(), _phone.trim(), _address.trim(), _problem);
        // FocusScope.of(context).unfocus();
      }
    }

    return Center(
      child: Card(
        margin: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: FormField(builder: (FormFieldState<String> state) {
              return Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    TextFormField(
                        autocorrect: true,
                        textCapitalization: TextCapitalization.words,
                        enableSuggestions: true,
                        key: ValueKey("Name"),
                        validator: (val) {
                          if (val.isEmpty || val.length < 4) {
                            return "Please enter at least 4 characters";
                          }
                          return null;
                        },
                        decoration: InputDecoration(labelText: "Full Name"),
                        onSaved: (val) {
                          _name = val;
                        }),
                    TextFormField(
                        keyboardType: TextInputType.phone,
                        key: ValueKey("Phone"),
                        validator: (val) {
                          if (val.isEmpty || val.length != 10) {
                            return "Phone Number mut be at 10 digits long";
                          }
                          return null;
                        },
                        decoration: InputDecoration(labelText: "Phone Number"),
                        onSaved: (val) {
                          _phone = val;
                        }),
                    Drop(widget.documents, drop),
                    TextFormField(
                        initialValue: "NA",
                        keyboardType: TextInputType.multiline,
                        key: ValueKey("Address"),
                        validator: (val) {
                          if (val.isEmpty) {
                            return "Please Enter complete address";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            labelText: "Any spcific problem ? "),
                        onSaved: (val) {
                          _address = val;
                        }),
                    SizedBox(
                      height: 12,
                    ),
                    RaisedButton(
                      color: Theme.of(context).accentColor,
                      child: Text("Submit"),
                      onPressed: _trySubmit,
                    ),
                  ],
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
