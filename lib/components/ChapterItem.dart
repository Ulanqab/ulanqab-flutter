import 'package:flutter/material.dart';
import 'package:ulanqab/model/Chapter.dart';

final _borderRadius = BorderRadius.circular(16.0);

class ChapterItem extends StatelessWidget {
  final Chapter chapter;

  const ChapterItem({Key key, this.chapter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Container(
        height: 240.0,
        child: InkWell(
          borderRadius: _borderRadius,
          highlightColor: Colors.white60,
          splashColor: Colors.white70,
          onTap: () {
            print('I will tap');
          },
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  color: Colors.green,
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),//圆角半径为8
                      child: Image.network(chapter.chapterPicture, width: 110, height: 180)
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                         Text(
                          chapter.chapterTitle,
                          maxLines: 1,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.black12,
                          ),),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(padding: EdgeInsets.all(0),child: Image(image: AssetImage('assets/icons/icon_star_normal.png'), width: 36, height: 36,),),
                          Padding(padding: EdgeInsets.all(0),child: Image(image: AssetImage('assets/icons/icon_star_normal.png'), width: 36, height: 36,),),
                          Padding(padding: EdgeInsets.all(0),child: Image(image: AssetImage('assets/icons/icon_star_normal.png'), width: 36, height: 36,),),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
