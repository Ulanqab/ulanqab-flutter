import 'package:flutter/material.dart';
import 'package:ulanqab/page/HomePage.dart';
import 'package:ulanqab/page/LessonPage.dart';
import 'package:ulanqab/page/LearningScene.dart';

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
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(title: 'Ulanqab'),
        '/LessonPage': (context) => LessonPage(title: 'Lesson'),
        '/LearningScene': (context) => LearningScene(),
      },
    );
  }
}
