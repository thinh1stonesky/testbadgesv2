
import 'package:flutter/cupertino.dart';

class Cart extends ChangeNotifier{
  int _value = 0;

  int get value => _value;

  void Increment(){
    _value ++;
    notifyListeners();
  }
}