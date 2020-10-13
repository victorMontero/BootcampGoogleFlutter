import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:bootcamp_google_flutter/category.dart';

final _backgroundColor = Colors.green[100];

class CategoryScreen extends StatelessWidget {
  const CategoryScreen();

  static const _categoryNames = <String>[
    'lenght',
    'area',
    'volume',
    'mass',
    'time',
    'digital storage',
    'energy',
    'currency',
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.redAccent,
  ];

  Widget _buildCategoryWidgets(List<Widget> categories) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) => categories[index],
      itemCount: categories.length,
    );
  }

   @override
    Widget build(BuildContext context) {
      final categories = <Category>[];

      for (var i = 0; i < _categoryNames.length; i++) {
        categories.add(Category(name: _categoryNames[i],
            color: _baseColors[i],
            iconLocation: Icons.cake));
      }

      final listView = Container(
        color: _backgroundColor,
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: _buildCategoryWidgets(categories),
      );

      final appbar = AppBar(
        elevation: 0.0,
        title: Text('unit converter', style: TextStyle(
            color: Colors.black,
            fontSize: 24.0
        ),),
        centerTitle: true,
        backgroundColor: _backgroundColor,
      );

      return Scaffold(
        appBar: appbar,
        body: listView,
      );
    }
  }

