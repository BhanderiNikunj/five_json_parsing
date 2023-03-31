import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fore_json_parsing/Screen/JsonData2/Model/JsonScreenModel2.dart';

class JsonScreenProvider2 extends ChangeNotifier {
  List<dynamic> Json2 = [];

  Future<void> JsonParsh2() async {
    String jsonDataString =
        await rootBundle.loadString("Assets/Json/JsonFile2.json");

    var Json = jsonDecode(jsonDataString);

    List<dynamic> JsonDataList2 =
        Json.map((e) => JsonScreenModel2().fornJson1(e)).toList();

    Json2 = JsonDataList2;
    notifyListeners();
  }
}
