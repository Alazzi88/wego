import 'dart:ffi';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:wego/color.dart';
import 'package:wego/count.dart';
import 'package:wego/home.dart';
import 'package:wego/share.dart';
import 'package:wego/test.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
        return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Wego(),
    );
  }
}