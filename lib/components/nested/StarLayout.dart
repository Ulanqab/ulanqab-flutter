import 'package:flutter/material.dart';

class StarLayout extends StatelessWidget {
  final num nums;

  const StarLayout({Key key, this.nums}) : super(key: key);

  Widget _genStarByStatus(bool isActive) {
    const starActive = 'assets/icons/icon_star_active.png';
    const starNormal = 'assets/icons/icon_star_normal.png';
    return Image(
      image: AssetImage(isActive ? starActive : starNormal),
      width: 36,
      height: 36,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: _genStarByStatus(nums > 0),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
          child: _genStarByStatus(nums > 1),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
          child: _genStarByStatus(nums > 2),
        ),
      ],
    );
  }
}
