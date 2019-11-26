import 'package:flutter/material.dart';

import 'amy_farrah_fowler_screen.dart';
import 'photo_hero.dart';

class SheldonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sheldon\'s Nobel Page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: PhotoHero(
                fsize: 10,
                tag: "heldin",
                photo: "assets/images/sheldon_nobel.jpg",
                width: 200,
                onTap: () {
                  print("you clicked me");
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AmyFarrahFowlerScreen()));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
