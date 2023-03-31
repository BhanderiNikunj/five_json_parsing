import 'package:flutter/material.dart';
import 'package:fore_json_parsing/Screen/JsonData1/Provider/JsonScreenProvider1.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class JsonScreen1 extends StatefulWidget {
  const JsonScreen1({Key? key}) : super(key: key);

  @override
  State<JsonScreen1> createState() => _JsonScreen1State();
}

class _JsonScreen1State extends State<JsonScreen1> {
  JsonScreenProvider1? jsonScreenProvider1True;
  JsonScreenProvider1? jsonScreenProvider1False;

  @override
  void initState() {
    super.initState();

    Provider.of<JsonScreenProvider1>(context, listen: false).JsonParsh1();
  }

  @override
  Widget build(BuildContext context) {
    jsonScreenProvider1False =
        Provider.of<JsonScreenProvider1>(context, listen: false);
    jsonScreenProvider1True =
        Provider.of<JsonScreenProvider1>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          title: Text("Json Data 1"),
          backgroundColor: Colors.black,
        ),
        body: ListView.builder(
          itemCount: jsonScreenProvider1False!.Json1.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'json1 full',arguments: index);
                },
                child: Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.white),
                    color: Colors.white30,
                  ),
                  child: Row(
                    children: [
                      Text(
                        "${jsonScreenProvider1False!.Json1[index].id}",
                        style: GoogleFonts.neuton(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                      Container(width: 50),
                      Expanded(
                        child: Text(
                          "${jsonScreenProvider1False!.Json1[index].title}",
                          style: GoogleFonts.neuton(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
