import 'package:flutter/material.dart';
import 'package:fore_json_parsing/Screen/JsonData1/View/JsonScreen1.dart';
import 'package:fore_json_parsing/Screen/JsonData2/View/JsonScreen2.dart';
import 'package:fore_json_parsing/Screen/JsonData3/View/JsonScreen3.dart';
import 'package:fore_json_parsing/Screen/JsonData4/View/JsonScreen4.dart';
import 'package:fore_json_parsing/Screen/JsonData5/View/JsonScreen5.dart';

class BottomScreenProvider extends ChangeNotifier{
  List Screen = [
      JsonScreen1(),
      JsonScreen2(),
      JsonScreen3(),
      JsonScreen4(),
      JsonScreen5(),
  ];
  int i=0;

  void checkScreen(int value){
    i=value;
    notifyListeners();
  }
}