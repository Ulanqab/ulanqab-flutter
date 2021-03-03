import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LearningScene extends StatefulWidget {
  @override
  _LearningScene createState() => _LearningScene();
}

Widget _ComLoading(context) {
  final size = MediaQuery.of(context).size;
  final width = size.width;
  final height = size.height;
  final sceneRatio = 375 / 675;
  final ratio = width / height;

  var w = width;
  var h = height;

  if (sceneRatio > ratio) {
    w = width / ratio;
    h = height * ratio;
  } else {
    w = width / ratio;
    h = height;
  }

  print('w++++');
  print(w);
  print('h----');
  print(h);

  return Container(
    width: 675,
    height: 375,
    alignment: Alignment.center,
    decoration: new BoxDecoration(
      color: Colors.black,
      image: new DecorationImage(
          image: new NetworkImage(
              'https://cdn.yunshuxie.com/m/page/learning_scene/img/loading_bg.png'),
          fit: BoxFit.cover),
    ),
  );
}

Widget _ButtonBack(context) {
  return Positioned(
    left: 16,
    top: 16,
    child: InkWell(
      child: Image(
        image: AssetImage('assets/icons/icon_back.png'),
        width: 32,
        height: 32,
      ),
      onTap: () {
        Navigator.pop(context);
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.portraitUp,
          DeviceOrientation.portraitDown,
        ]);
    },
  ));
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
      body: Stack(children: [
        _ButtonBack(context),
        Center(child: _ComLoading(context),),
      ],),
    );
  }
}
