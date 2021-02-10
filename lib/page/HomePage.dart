import 'package:flutter/material.dart';
import 'package:ulanqab/components/ItemCategory.dart';
import 'package:ulanqab/components/ChapterItem.dart';
import 'package:ulanqab/model/Chapter.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}


Widget _buildChapterWidgets(List<Widget> chapterList) {
  return ListView.builder(
    itemBuilder: (BuildContext context, int index) => chapterList[index],
    itemCount: chapterList.length,
  );
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final chapterList = <ChapterItem>[];

    for (var i = 0; i < 10; i++) {
      Chapter chapter = new Chapter(
        chapterId: 180492,
        chapterPicture:
            'https://oss-sts-upload.yunshuxie.com/pic/thadm/material/2020/04/27/16/08/17/bca4817906974f74a7f7e2016e5b8309/ea4c2dd9-ab73-4579-add2-fd897305a869.png',
        chapterTitle: '【口语表达】咿呀咿呀，荡秋千',
        courseIndex: '第5课',
        productCourseId: 107367,
        productType: 140,
        starNum: 3,
        studyStatus: 2,
      );
      chapterList.add(ChapterItem(chapter: chapter));
    }

    final listViewChapter = Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: _buildChapterWidgets(chapterList),
    );

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
      body: listViewChapter,
    );
  }
}
