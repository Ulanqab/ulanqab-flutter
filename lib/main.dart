import 'package:flutter/material.dart';
import 'package:ulanqab/page/HomePage.dart';

void main() {
  runApp(UlanqabApp());
}

class UlanqabApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Ulanqab',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(title: 'Ulanqab'),
    );
  }
}
