import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fore_json_parsing/Screen/JsonData3/Model/JsonScreenModel3.dart';

class JsonScreenProvider3 extends ChangeNotifier {
  List<dynamic> Json3 = [];

  Future<void> JsonParsh3() async {
    String jsonDataString =
        await rootBundle.loadString("Assets/Json/JsonFile3.json");

    var Json = jsonDecode(jsonDataString);

    List<dynamic> JsonDataList3 =
        Json.map((e) => JsonScreenModel3().fornJson3(e)).toList();

    Json3 = JsonDataList3;
    notifyListeners();
  }
}
