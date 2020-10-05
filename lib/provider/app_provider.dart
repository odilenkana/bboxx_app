import 'package:flutter/cupertino.dart';

class AppProvider with ChangeNotifier {
  String _currentState = '';
  set currentState(String state) {
    _currentState = state;
    notifyListeners();
  }

  String get currentState => _currentState;
}
