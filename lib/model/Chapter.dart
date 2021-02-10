import 'package:flutter/material.dart';

class Chapter {
  final int chapterId;
  final String chapterPicture;
  final String chapterTitle;
  final String courseIndex;
  final int productCourseId;
  final int productType;
  final int starNum;
  final int studyStatus;

  const Chapter({
    @required this.chapterId,
    @required this.chapterPicture,
    @required this.chapterTitle,
    @required this.courseIndex,
    @required this.productCourseId,
    @required this.productType,
    @required this.starNum,
    @required this.studyStatus,
  })  : assert(chapterId != null),
        assert(chapterPicture != null),
        assert(chapterTitle != null),
        assert(courseIndex != null),
        assert(productCourseId != null),
        assert(productType != null),
        assert(starNum != null),
        assert(studyStatus != null);

  Chapter.fromJson(Map jsonMap)
      : assert(jsonMap['chapterId'] != null),
        assert(jsonMap['chapterPicture'] != null),
        assert(jsonMap['chapterTitle'] != null),
        assert(jsonMap['courseIndex'] != null),
        assert(jsonMap['productCourseId'] != null),
        assert(jsonMap['productType'] != null),
        assert(jsonMap['starNum'] != null),
        assert(jsonMap['studyStatus'] != null),
        chapterId = jsonMap['chapterId'],
        chapterPicture = jsonMap['chapterPicture'],
        chapterTitle = jsonMap['chapterTitle'],
        courseIndex = jsonMap['courseIndex'],
        productCourseId = jsonMap['productCourseId'],
        productType = jsonMap['productType'],
        starNum = jsonMap['starNum'],
        studyStatus = jsonMap['studyStatus'];
}
