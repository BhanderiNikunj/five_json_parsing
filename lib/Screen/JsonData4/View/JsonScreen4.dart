import 'package:flutter/material.dart';
import 'package:fore_json_parsing/Screen/JsonData4/Provider/JsonScreenProvider4.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class JsonScreen4 extends StatefulWidget {
  const JsonScreen4({Key? key}) : super(key: key);

  @override
  State<JsonScreen4> createState() => _JsonScreen4State();
}

class _JsonScreen4State extends State<JsonScreen4> {
  JsonScreenProvider4? jsonScreenProvider4True;
  JsonScreenProvider4? jsonScreenProvider4False;

  @override
  void initState() {
    super.initState();

    Provider.of<JsonScreenProvider4>(context, listen: false).JsonParsh4();
  }

  @override
  Widget build(BuildContext context) {
    jsonScreenProvider4False =
        Provider.of<JsonScreenProvider4>(context, listen: false);
    jsonScreenProvider4True =
        Provider.of<JsonScreenProvider4>(context, listen: true);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          title: Text("Json Data 4"),
          backgroundColor: Colors.black,
        ),
        body: ListView.builder(
          itemCount: jsonScreenProvider4False!.Json4.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'json4 full',arguments: index);
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
                        "${jsonScreenProvider4False!.Json4[index].id}",
                        style: GoogleFonts.neuton(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                      SizedBox(width: 20),
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
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
