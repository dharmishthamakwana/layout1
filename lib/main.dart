import 'package:flutter/material.dart';
import 'package:pr6/screen1.dart';
void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => one(),

      },
    ),
  );
}