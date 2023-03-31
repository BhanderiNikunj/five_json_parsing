import 'package:flutter/material.dart';
import 'package:fore_json_parsing/Screen/JsonData5/Provider/JsonScreenProvider5.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';

class JsonFullScreen5 extends StatefulWidget {
  const JsonFullScreen5({Key? key}) : super(key: key);

  @override
  State<JsonFullScreen5> createState() => _JsonFullScreen5State();
}

class _JsonFullScreen5State extends State<JsonFullScreen5> {
  JsonScreenProvider5? jsonScreenProvider5True;
  JsonScreenProvider5? jsonScreenProvider5False;

  @override
  Widget build(BuildContext context) {
    int index = ModalRoute.of(context)!.settings.arguments as int;

    jsonScreenProvider5False =
        Provider.of<JsonScreenProvider5>(context, listen: false);
    jsonScreenProvider5True =
        Provider.of<JsonScreenProvider5>(context, listen: true);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("${jsonScreenProvider5False!.Json5[index].id}"),
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
                      "${jsonScreenProvider5False!.Json5[index].title}",
                      style: GoogleFonts.neuton(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  SizedBox(width: 30),
                  Text(
                    "completed      :-   ",
                    style: GoogleFonts.neuton(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "${jsonScreenProvider5False!.Json5[index].completed}",
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
