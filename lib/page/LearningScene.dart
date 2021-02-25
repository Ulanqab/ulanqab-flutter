import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LearningScene extends StatefulWidget {
  @override
  _LearningScene createState() => _LearningScene();
}

Widget _ComLoading() {
  return Container(
    width: 100,
    height: 100,
    decoration: new BoxDecoration(
      image: new DecorationImage(
        image: new NetworkImage('https://cdn.yunshuxie.com/m/page/learning_scene/img/loading_bg.png'),
        fit: BoxFit.contain
      ),
    ),
  );
}

class _LearningScene extends State<LearningScene> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          _ComLoading(),
        ],
      ),
    );
  }
}
