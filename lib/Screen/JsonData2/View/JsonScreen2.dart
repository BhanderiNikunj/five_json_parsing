import 'package:flutter/material.dart';
import 'package:fore_json_parsing/Screen/JsonData2/Provider/JsonScreenProvider2.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class JsonScreen2 extends StatefulWidget {
  const JsonScreen2({Key? key}) : super(key: key);

  @override
  State<JsonScreen2> createState() => _JsonScreen2State();
}

class _JsonScreen2State extends State<JsonScreen2> {
  JsonScreenProvider2? jsonScreenProvider2True;
  JsonScreenProvider2? jsonScreenProvider2False;

  @override
  void initState() {
    super.initState();

    Provider.of<JsonScreenProvider2>(context, listen: false).JsonParsh2();
  }

  @override
  Widget build(BuildContext context) {
    jsonScreenProvider2False =
        Provider.of<JsonScreenProvider2>(context, listen: false);
    jsonScreenProvider2True =
        Provider.of<JsonScreenProvider2>(context, listen: true);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          title: Text("Json Data 2"),
          backgroundColor: Colors.black,
        ),
        body: ListView.builder(
          itemCount: jsonScreenProvider2False!.Json2.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'json2 full',arguments: index);
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
                        "${jsonScreenProvider2False!.Json2[index].id}",
                        style: GoogleFonts.neuton(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Text(
                          "${jsonScreenProvider2False!.Json2[index].name}",
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
