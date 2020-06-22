import 'package:flutter/material.dart';

class RowAndColum extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      //测试Row对齐方式，排除Column默认居中对齐的干扰
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(" hello world "),
            Text(" I am Jack "),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(" hello world "),
            Text(" I am Jack "),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          textDirection: TextDirection.ltr,
          children: <Widget>[
            Text(" hello world "),
            Text(" I am Jack "),
          ],
        ),
        Row(
          verticalDirection: VerticalDirection.up,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Text(
              " hello world ",
              style: TextStyle(fontSize: 30.0),
            ),
            Text(" I am Jack "),
          ],
        ),
      ],
    );
  }
}
