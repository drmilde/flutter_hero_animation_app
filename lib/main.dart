import 'package:flutter/material.dart';
import 'package:flutter_hero_animation_app/screens/amy_farrah_fowler_screen.dart';
import 'package:flutter_hero_animation_app/screens/hero_animation.dart';
import 'package:flutter_hero_animation_app/screens/sheldon_screen.dart';
import 'package:flutter_hero_animation_app/screens/sliver_essen_screen.dart';

import 'screens/photo_hero.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hero Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SliverEssenScreen(),
    );
  }
}

