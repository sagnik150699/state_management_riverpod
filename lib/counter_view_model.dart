import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/legacy.dart';

final stateProvider =
    ChangeNotifierProvider<CounterViewModel>((ref) => CounterViewModel());

class CounterViewModel extends ChangeNotifier {
  int _counter = 0;
  int get counter => _counter;
  void add() {
    _counter++;
    notifyListeners();
  }
}
