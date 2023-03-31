import 'package:flutter/material.dart';
import 'package:fore_json_parsing/Screen/JsonData2/Provider/JsonScreenProvider2.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';

class JsonFullScreen2 extends StatefulWidget {
  const JsonFullScreen2({Key? key}) : super(key: key);

  @override
  State<JsonFullScreen2> createState() => _JsonFullScreen2State();
}

class _JsonFullScreen2State extends State<JsonFullScreen2> {
  JsonScreenProvider2? jsonScreenProvider2True;
  JsonScreenProvider2? jsonScreenProvider2False;

  @override
  Widget build(BuildContext context) {
    int index = ModalRoute.of(context)!.settings.arguments as int;

    jsonScreenProvider2False =
        Provider.of<JsonScreenProvider2>(context, listen: false);
    jsonScreenProvider2True =
        Provider.of<JsonScreenProvider2>(context, listen: true);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("${jsonScreenProvider2False!.Json2[index].id}"),
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
                    "Name    :-   ",
                    style: GoogleFonts.neuton(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "${jsonScreenProvider2False!.Json2[index].name}",
                    style: GoogleFonts.neuton(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  SizedBox(width: 30),
                  Text(
                    "email     :-   ",
                    style: GoogleFonts.neuton(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "${jsonScreenProvider2False!.Json2[index].email}",
                    style: GoogleFonts.neuton(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  SizedBox(width: 30),
                  Text(
                    "body      :-   ",
                    style: GoogleFonts.neuton(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "${jsonScreenProvider2False!.Json2[index].body}",
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
