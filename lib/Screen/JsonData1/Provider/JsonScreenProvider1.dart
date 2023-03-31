import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fore_json_parsing/Screen/JsonData1/Model/JsonScreenModel1.dart';

class JsonScreenProvider1 extends ChangeNotifier {
  List<dynamic> Json1 = [];

  Future<void> JsonParsh1() async {
    String jsonDataString =
        await rootBundle.loadString("Assets/Json/JsonFile1.json");

    var Json = jsonDecode(jsonDataString);

    List<dynamic> JsonDataList1 =
        Json.map((e) => JsonScreenModel1().fornJson1(e)).toList();

    Json1 = JsonDataList1;
    notifyListeners();
  }
}
