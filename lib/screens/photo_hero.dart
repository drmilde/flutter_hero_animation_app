import 'package:flutter/material.dart';

class PhotoHero extends StatelessWidget {
  const PhotoHero(
      {Key key, this.photo, this.onTap, this.width, this.tag, this.fsize})
      : super(key: key);

  final String photo;
  final String tag;
  final double fsize;
  final VoidCallback onTap;
  final double width;

  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Hero(
        tag: tag,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            child: Column(
              children: <Widget>[
                Image.asset(
                  photo,
                  fit: BoxFit.contain,
                ),
                Text("Untertitel",
                    style: TextStyle(
                      fontSize: fsize,
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
