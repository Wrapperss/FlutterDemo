/*
 * @Author: Wrappers 
 * @Date: 2020-06-29 15:56:21 
 * @Last Modified by:   Wrappers 
 * @Last Modified time: 2020-06-29 15:56:21 
 */

import 'package:flutter/material.dart';

class FlowArrange extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 80.0, // 主轴(水平)方向间距
      runSpacing: 4.0, // 纵轴（垂直）方向间距
      alignment: WrapAlignment.start, //沿主轴方向居中
      children: <Widget>[
        new Chip(
          avatar:
              new CircleAvatar(backgroundColor: Colors.blue, child: Text('A')),
          label: new Text('Hamilton'),
        ),
        new Chip(
          avatar:
              new CircleAvatar(backgroundColor: Colors.blue, child: Text('M')),
          label: new Text('Lafayette'),
        ),
        new Chip(
          avatar:
              new CircleAvatar(backgroundColor: Colors.blue, child: Text('H')),
          label: new Text('Mulligan'),
        ),
        new Chip(
          avatar:
              new CircleAvatar(backgroundColor: Colors.blue, child: Text('J')),
          label: new Text('Laurens'),
        ),
      ],
    );
  }
}
