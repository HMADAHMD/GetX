import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class TapController extends GetxController {
  int _x = 0;
  int get x => _x;

  void increaseX() {
    _x++;
    update();
    print(_x);
  }

  void resetX() {
    _x = 0;
    update();
    print(_x);
  }
}
