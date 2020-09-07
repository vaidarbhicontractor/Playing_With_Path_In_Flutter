import 'package:flutter/material.dart';
import 'package:pathdrawing/planets.dart';
import 'package:pathdrawing/spiral.dart';
import 'package:pathdrawing/circles.dart';
import 'package:pathdrawing/lines.dart';
import 'package:pathdrawing/polygon.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Path Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, Widget> screens = {
      'Lines': Lines(),
      'Circles': Circles(),
      'Polygon': Polygon(),
      'Spiral': Spiral(),
      'Planets': Planets(),
    };
    List<Widget> children = [];
    screens.forEach((k, v) {
      children.add(
        ListTile(
          title: Text(k),
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => v),
          ),
        ),
      );
    });
    return Scaffold(
      appBar: AppBar(title: Text('Flutter path animation')),
      body: ListView(
        children: children,
      ),
    );
  }
}
