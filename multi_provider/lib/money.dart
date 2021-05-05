import 'package:flutter/cupertino.dart';

class Money with ChangeNotifier {
  int _balance = 0;

  int get balance => _balance;

  set balance(int value) {
    _balance = value;
    notifyListeners();
  }
}
