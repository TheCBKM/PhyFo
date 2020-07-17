import 'package:flutter/cupertino.dart';

class OurStore extends ChangeNotifier {
  int view = 0;
  String text = "";

  int get getVIew => view;

  String get getText => text;

  void changeView(int i) {
    view = i;
    notifyListeners();
  }

  void changeText(String i) {
    text = i;
    notifyListeners();
  }
}
