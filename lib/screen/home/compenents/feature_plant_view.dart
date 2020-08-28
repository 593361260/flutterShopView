import 'package:flutter/material.dart';

class FeatureCover extends StatelessWidget {
  final String cover;

  const FeatureCover({Key key, this.cover}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        margin: EdgeInsets.only(top: 20, left: 20, bottom: 10),
        width: size.width * 0.8,
        height: size.width * 0.6,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(image: AssetImage(cover), fit: BoxFit.cover),
        ));
  }
}
