import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LessonPage extends StatefulWidget {
  const LessonPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LessonPage createState() => _LessonPage();
}

class _LessonPage extends State<LessonPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  InkWell(
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
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
