import 'package:flutter/material.dart';
import 'package:fore_json_parsing/Screen/JsonData1/Provider/JsonScreenProvider1.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class JsonFullScreen1 extends StatefulWidget {
  const JsonFullScreen1({Key? key}) : super(key: key);

  @override
  State<JsonFullScreen1> createState() => _JsonFullScreen1State();
}

class _JsonFullScreen1State extends State<JsonFullScreen1> {

  JsonScreenProvider1? jsonScreenProvider1True;
  JsonScreenProvider1? jsonScreenProvider1False;

  @override
  Widget build(BuildContext context) {
    jsonScreenProvider1False = Provider.of<JsonScreenProvider1>(context,listen: false);
    jsonScreenProvider1True = Provider.of<JsonScreenProvider1>(context,listen: true);

    int index = ModalRoute.of(context)!.settings.arguments as int;


    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("${jsonScreenProvider1False!.Json1[index].id}"),
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
                    "title       :-   ",
                    style: GoogleFonts.neuton(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "${jsonScreenProvider1False!.Json1[index].title}",
                      style: GoogleFonts.neuton(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  SizedBox(width: 30),
                  Text(
                    "body     :-   ",
                    style: GoogleFonts.neuton(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "${jsonScreenProvider1False!.Json1[index].body}",
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
