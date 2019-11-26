import 'package:flutter/material.dart';

import 'photo_hero.dart';

class AmyFarrahFowlerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Amy"),
      ),
      body: PhotoHero(
        fsize: 20,
        tag: "heldin",
        photo: "assets/images/amy.jpg",
        width: 100,
        onTap: () {
          print ("amy");
        },
      ),
    );

  }
}
