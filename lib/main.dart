import 'package:flutter/material.dart';
import 'package:fore_json_parsing/Screen/Bottom/Provider/BottomScreenProvider.dart';
import 'package:fore_json_parsing/Screen/Bottom/View/BottomScreen.dart';
import 'package:fore_json_parsing/Screen/JsonData1/Provider/JsonScreenProvider1.dart';
import 'package:fore_json_parsing/Screen/JsonData1/View/JsonFullScreen1.dart';
import 'package:fore_json_parsing/Screen/JsonData1/View/JsonScreen1.dart';
import 'package:fore_json_parsing/Screen/JsonData2/Provider/JsonScreenProvider2.dart';
import 'package:fore_json_parsing/Screen/JsonData2/View/JsonFullScreen2.dart';
import 'package:fore_json_parsing/Screen/JsonData2/View/JsonScreen2.dart';
import 'package:fore_json_parsing/Screen/JsonData3/Provider/JsonScreenProvider3.dart';
import 'package:fore_json_parsing/Screen/JsonData3/View/JsonFullScreen3.dart';
import 'package:fore_json_parsing/Screen/JsonData3/View/JsonScreen3.dart';
import 'package:fore_json_parsing/Screen/JsonData4/Provider/JsonScreenProvider4.dart';
import 'package:fore_json_parsing/Screen/JsonData4/View/JsonFullScreen4.dart';
import 'package:fore_json_parsing/Screen/JsonData4/View/JsonScreen4.dart';
import 'package:fore_json_parsing/Screen/JsonData5/Provider/JsonScreenProvider5.dart';
import 'package:fore_json_parsing/Screen/JsonData5/View/JsonFullScreen5.dart';
import 'package:fore_json_parsing/Screen/JsonData5/View/JsonScreen5.dart';
import 'package:fore_json_parsing/Screen/Splash/View/SplashScreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => JsonScreenProvider1(),
        ),
        ChangeNotifierProvider(
          create: (context) => JsonScreenProvider2(),
        ),
        ChangeNotifierProvider(
          create: (context) => JsonScreenProvider3(),
        ),
        ChangeNotifierProvider(
          create: (context) => JsonScreenProvider4(),
        ),
        ChangeNotifierProvider(
          create: (context) => JsonScreenProvider5(),
        ),
        ChangeNotifierProvider(
          create: (context) => BottomScreenProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const SplashScreen(),
          'bottom': (context) => const BottomScreen(),
          'json1': (context) => const JsonScreen1(),
          'json1 full': (context) => const JsonFullScreen1(),
          'json2': (context) => const JsonScreen2(),
          'json2 full': (context) => const JsonFullScreen2(),
          'json3': (context) => const JsonScreen3(),
          'json3 full': (context) => const JsonFullScreen3(),
          'json4': (context) => const JsonScreen4(),
          'json4 full': (context) => const JsonFullScreen4(),
          'json5': (context) => const JsonScreen5(),
          'json5 full': (context) => const JsonFullScreen5(),
        },
      ),
    ),
  );
}
