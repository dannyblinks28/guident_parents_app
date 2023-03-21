import 'package:flutter/foundation.dart';

class NavigationProvider extends ChangeNotifier {
  int _selected = 0;
  int get selected => _selected;

  select(int index) {
    _selected = index;
    notifyListeners();
  }
}
