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

    final appBar = AppBar(
      elevation: 0.0,
      title: Text(
        widget.title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 30.0,
        ),
      ),
    );

    return Scaffold(
      appBar: appBar,
      backgroundColor: Colors.white,
      body: Center(child: Text('data'),),
    );
  }
}
