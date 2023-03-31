import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fore_json_parsing/Screen/JsonData4/Model/JsonScreenModel4.dart';

class JsonScreenProvider4 extends ChangeNotifier {
  List<dynamic> Json4 = [];

  Future<void> JsonParsh4() async {
    String jsonDataString =
        await rootBundle.loadString("Assets/Json/JsonFile4.json");

    var Json = jsonDecode(jsonDataString);

    List<dynamic> JsonDataList4 =
        Json.map((e) => JsonScreenModel4().fornJson4(e)).toList();

    Json4 = JsonDataList4;
    print(Json);
    notifyListeners();
  }
}
