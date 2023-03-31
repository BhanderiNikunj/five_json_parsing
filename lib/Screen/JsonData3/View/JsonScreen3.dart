import 'package:flutter/material.dart';
import 'package:fore_json_parsing/Screen/JsonData3/Provider/JsonScreenProvider3.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class JsonScreen3 extends StatefulWidget {
  const JsonScreen3({Key? key}) : super(key: key);

  @override
  State<JsonScreen3> createState() => _JsonScreen3State();
}

class _JsonScreen3State extends State<JsonScreen3> {
  JsonScreenProvider3? jsonScreenProvider3True;
  JsonScreenProvider3? jsonScreenProvider3False;

  @override
  void initState() {
    super.initState();

    Provider.of<JsonScreenProvider3>(context, listen: false).JsonParsh3();
  }

  @override
  Widget build(BuildContext context) {
    jsonScreenProvider3False =
        Provider.of<JsonScreenProvider3>(context, listen: false);
    jsonScreenProvider3True =
        Provider.of<JsonScreenProvider3>(context, listen: true);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          title: Text("Json Data 3"),
          backgroundColor: Colors.black,
        ),
        body: ListView.builder(
          itemCount: jsonScreenProvider3False!.Json3.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'json3 full',arguments: index);
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
                        "${jsonScreenProvider3False!.Json3[index].id}",
                        style: GoogleFonts.neuton(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                      SizedBox(width: 20),
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
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
