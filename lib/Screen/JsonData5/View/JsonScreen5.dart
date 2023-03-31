import 'package:flutter/material.dart';
import 'package:fore_json_parsing/Screen/JsonData5/Provider/JsonScreenProvider5.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class JsonScreen5 extends StatefulWidget {
  const JsonScreen5({Key? key}) : super(key: key);

  @override
  State<JsonScreen5> createState() => _JsonScreen5State();
}

class _JsonScreen5State extends State<JsonScreen5> {
  JsonScreenProvider5? jsonScreenProvider5True;
  JsonScreenProvider5? jsonScreenProvider5False;

  @override
  void initState() {
    super.initState();

    Provider.of<JsonScreenProvider5>(context, listen: false).JsonParsh5();
  }

  @override
  Widget build(BuildContext context) {
    jsonScreenProvider5False =
        Provider.of<JsonScreenProvider5>(context, listen: false);
    jsonScreenProvider5True =
        Provider.of<JsonScreenProvider5>(context, listen: true);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          title: Text("Json Data 5"),
          backgroundColor: Colors.black,
        ),
        body: ListView.builder(
          itemCount: jsonScreenProvider5False!.Json5.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'json5 full', arguments: index);
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
                        "${jsonScreenProvider5False!.Json5[index].id}",
                        style: GoogleFonts.neuton(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                      SizedBox(width: 20),
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
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
