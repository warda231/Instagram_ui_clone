import 'package:flutter/foundation.dart';

class favItem with ChangeNotifier{
  List<int> _selecteditem= [];
  List<int> get selectedItem => _selecteditem;

  void addItem(int value) {
    _selecteditem.add(value);
    notifyListeners();
  }

  void cutItem(int value) {
    _selecteditem.remove(value);
    notifyListeners();
  }

}