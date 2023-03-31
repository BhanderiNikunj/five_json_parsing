import 'package:flutter/material.dart';
import 'package:fore_json_parsing/Screen/JsonData3/Provider/JsonScreenProvider3.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';

class JsonFullScreen3 extends StatefulWidget {
  const JsonFullScreen3({Key? key}) : super(key: key);

  @override
  State<JsonFullScreen3> createState() => _JsonFullScreen3State();
}

class _JsonFullScreen3State extends State<JsonFullScreen3> {
  JsonScreenProvider3? jsonScreenProvider3True;
  JsonScreenProvider3? jsonScreenProvider3False;

  @override
  Widget build(BuildContext context) {
    int index = ModalRoute.of(context)!.settings.arguments as int;

    jsonScreenProvider3False =
        Provider.of<JsonScreenProvider3>(context, listen: false);
    jsonScreenProvider3True =
        Provider.of<JsonScreenProvider3>(context, listen: true);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("${jsonScreenProvider3False!.Json3[index].id}"),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Icon(
                  Icons.person,
                  color: Colors.white60,
                  size: 70,
                ),
              ),
              Row(
                children: [
                  SizedBox(width: 30),
                  Text(
                    "title    :-   ",
                    style: GoogleFonts.neuton(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "${jsonScreenProvider3False!.Json3[index].title}",
                      style: GoogleFonts.neuton(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
