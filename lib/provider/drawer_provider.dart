import 'package:flutter/foundation.dart';

class DrawerProvider extends ChangeNotifier {
  bool _isOpen = false;
  bool get isOpen => _isOpen;

  change(bool t) {
    _isOpen = t;
    notifyListeners();
  }
}
