import 'dart:ui';

import 'package:bootcamp_google_flutter/category_screen.dart';
import 'package:flutter/material.dart';

import 'package:bootcamp_google_flutter/category.dart';


void main() {
  runApp(UnitConverterApp());
}

class UnitConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'unit converter',
      home: CategoryScreen(),
    );
  }
}
