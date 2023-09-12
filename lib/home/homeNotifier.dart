import 'package:flutter/material.dart';

class HomeNotifier extends ChangeNotifier{
  final BuildContext context;

  HomeNotifier(this.context);

  List<String> items = ['A', 'B', 'C', 'D'];

  void addItem(String item){
    items.add(item);
    notifyListeners();
  }

  void removeItem(int index){
    items.removeAt(index);
    notifyListeners();
  }
}