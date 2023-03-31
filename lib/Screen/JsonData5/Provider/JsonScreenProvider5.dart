import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fore_json_parsing/Screen/JsonData5/Model/JsonScreenModel5.dart';

class JsonScreenProvider5 extends ChangeNotifier {
  List<dynamic> Json5 = [];

  Future<void> JsonParsh5() async {
    String jsonDataString =
        await rootBundle.loadString("Assets/Json/JsonFile5.json");

    var Json = jsonDecode(jsonDataString);

    List<dynamic> JsonDataList5 =
        Json.map((e) => JsonScreenModel5().fornJson5(e)).toList();

    Json5 = JsonDataList5;

    print(Json5);
    notifyListeners();
  }
}
