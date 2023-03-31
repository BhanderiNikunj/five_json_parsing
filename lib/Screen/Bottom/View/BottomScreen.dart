import 'package:flutter/material.dart';
import 'package:fore_json_parsing/Screen/Bottom/Provider/BottomScreenProvider.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';

class BottomScreen extends StatefulWidget {
  const BottomScreen({Key? key}) : super(key: key);

  @override
  State<BottomScreen> createState() => _BottomScreenState();
}

class _BottomScreenState extends State<BottomScreen> {

  BottomScreenProvider? bottomScreenProviderTrue, bottomScreenProviderFalse;

  @override
  Widget build(BuildContext context) {

    bottomScreenProviderFalse =
        Provider.of<BottomScreenProvider>(context, listen: false);
    bottomScreenProviderTrue =
        Provider.of<BottomScreenProvider>(context, listen: true);

    return SafeArea(
      child: Scaffold(
        body: bottomScreenProviderTrue!.Screen[bottomScreenProviderTrue!.i],
        bottomNavigationBar: GNav(
          backgroundColor: Colors.black,
          activeColor: Colors.white,
          rippleColor: Colors.white30,
          iconSize: 30,
          onTabChange: (value) {
            bottomScreenProviderFalse!.checkScreen(value);
          },
          selectedIndex: bottomScreenProviderTrue!.i,
          gap: 5,
          tabBackgroundColor: Colors.white30,
          hoverColor: Colors.white30,
          color: Colors.white30,
          padding: EdgeInsets.all(5),
          textStyle: TextStyle(fontSize: 15,color: Colors.white),
          tabs: [
            GButton(icon: Icons.post_add_outlined, text: "Post"),
            GButton(icon: Icons.comment_outlined, text: "Comments"),
            GButton(icon: Icons.album_outlined, text: "Albums"),
            GButton(icon: Icons.photo, text: "Photos"),
            GButton(icon: Icons.info_outlined, text: "todos"),
          ],
        ),
      ),
    );
  }
}
