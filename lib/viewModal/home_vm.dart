import 'package:flutter/foundation.dart';

class HomeVm with ChangeNotifier {
  int counter =0;

  addCounter(){
    counter++;
    notifyListeners();
  }
}