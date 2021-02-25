import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ulanqab/components/nested/StarLayout.dart';

class LessonPage extends StatefulWidget {
  const LessonPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LessonPage createState() => _LessonPage();
}

Widget _lessonItem(context) {
  const coverUrl =
      'https://oss-sts-upload.yunshuxie.com/pic/thadm/material/2020/04/27/16/08/17/bca4817906974f74a7f7e2016e5b8309/ea4c2dd9-ab73-4579-add2-fd897305a869.png';
  return InkWell(
    onTap: () {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ]);
      Navigator.pushNamed(context, '/LearningScene');
    },
    child: Container(
      width: 160,
      height: 50,
      margin: EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 16.0),
      padding: EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 16.0),
      decoration: new BoxDecoration(
          color: Colors.black,
          borderRadius: new BorderRadius.all(new Radius.circular(16.0)),
          image: new DecorationImage(image: NetworkImage(coverUrl), fit: BoxFit.cover)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.all(0),
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 16.0),
              child: Text('Lesson 标题',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),),),
          ),
          StarLayout(nums: 2, align: 1,),
        ],
      ),
    ),
  );
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
      // body: ListView.builder(
      //   padding: const EdgeInsets.all(8),
      //   scrollDirection: Axis.horizontal,
      //   itemCount: 8,
      //   itemBuilder: (BuildContext context, int index) {
      //     return _lessonItem();
      //   }
      // ),
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
            ),
            Expanded(child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _lessonItem(context),
                _lessonItem(context),
                _lessonItem(context),
                _lessonItem(context),
                _lessonItem(context),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
