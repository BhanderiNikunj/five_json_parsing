import 'package:flutter/material.dart';
import 'package:fore_json_parsing/Screen/JsonData4/Provider/JsonScreenProvider4.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';

class JsonFullScreen4 extends StatefulWidget {
  const JsonFullScreen4({Key? key}) : super(key: key);

  @override
  State<JsonFullScreen4> createState() => _JsonFullScreen4State();
}

class _JsonFullScreen4State extends State<JsonFullScreen4> {
  JsonScreenProvider4? jsonScreenProvider4True;
  JsonScreenProvider4? jsonScreenProvider4False;

  @override
  Widget build(BuildContext context) {
    int index = ModalRoute.of(context)!.settings.arguments as int;

    jsonScreenProvider4False =
        Provider.of<JsonScreenProvider4>(context, listen: false);
    jsonScreenProvider4True =
        Provider.of<JsonScreenProvider4>(context, listen: true);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("${jsonScreenProvider4False!.Json4[index].id}"),
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
                      "${jsonScreenProvider4False!.Json4[index].title}",
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
                    "Url      :-   ",
                    style: GoogleFonts.neuton(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "${jsonScreenProvider4False!.Json4[index].url}",
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
                    "thumbnailUrl    :-   ",
                    style: GoogleFonts.neuton(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "${jsonScreenProvider4False!.Json4[index].thumbnailUrl}",
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
