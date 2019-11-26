import 'package:flutter/material.dart';

class SliverEssenScreen extends StatefulWidget {
  @override
  _SliverEssenScreenState createState() => _SliverEssenScreenState();
}

class _SliverEssenScreenState extends State<SliverEssenScreen> {
  List<String> speisen = [
    "Nudel mit Ketchup",
    "Kaiserschmarrn",
    "Lasagne",
    "300g Rumpsteak",
    "Burger mit Käse",
    "Feldsalat",
    "Kopfsalat",
    "Bulgur",
    "Obst",
    "Quark",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              snap: false,
              pinned: true,
              floating: true,
              expandedHeight: 150,
              backgroundColor: Color.fromARGB(255, 248, 145, 76),
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text("Speisen"),
                background: Image.network(
                    "https://www.fifteenspatulas.com/wp-content/uploads/2019/05/Orange-Creme-Brulee-Fifteen-Spatulas-16.jpg",
                    fit: BoxFit.cover),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return ListTile(
                    leading: Icon(Icons.local_dining),
                    title: Text("${speisen[index]}"),
                    subtitle: Text("19.90 \$"),
                    trailing:
                        RaisedButton(child: Text("order"), onPressed: () {}),
                  );
                },
                childCount: speisen.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
