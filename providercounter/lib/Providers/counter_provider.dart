import 'package:flutter/material.dart';

class CounterProvider with ChangeNotifier {
  int _counter = 0;
  int _originalValue = 0;
  int _finalValue = 0;

  int get counter => _counter;
  int get originalValue => _originalValue;
  int get finalValue => _finalValue;

  void increment() {
    _originalValue = _counter;
    _counter++;
    notifyListeners();
  }

  void decrement() {
    _originalValue = _counter;
    _counter--;
    notifyListeners();
  }

  void restart() {
    _originalValue = 0;
    _counter = 0;
    notifyListeners();
  }

  void multiplica2() {
    _originalValue = _counter;
    _counter = _counter * 2;
    notifyListeners();
  }

  void multiplica3() {
    _originalValue = _counter;
    _counter = _counter * 3;
    notifyListeners();
  }

  void multiplica5() {
    _originalValue = _counter;
    _counter = _counter * 5;
    notifyListeners();
  }

  void isPrime() {
    int i = 2;
    bool prime = true;
    while (i < _counter) {
      if (_counter % i == 0) {
        prime = false;
        break;
      }
      i++;
    }
    if (prime) {
      _originalValue = _counter;
      _counter = 1;
    } else {
      _originalValue = _counter;
      _counter = 0;
    }
    notifyListeners();
  }

  void setCounter(int value) {
    _counter = value;
    notifyListeners();
  }

  void multiplierOfTen(){
    _originalValue = _counter;
    if(_counter % 10 == 0 && _counter <= 100){
      _finalValue = 1;
    }else{
      _finalValue = 0;
    }
    notifyListeners();
  }
}