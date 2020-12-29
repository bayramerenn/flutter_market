import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildTextHelpers(
    {String text,
    double size,
    Color color,
    FontWeight weight,
    TextAlign textAlign}) {
  return Text(
    text,
    textAlign: textAlign,
    style: TextStyle(
      fontSize: size,
      color: color,
      fontWeight: weight,
    ),
  );
}
