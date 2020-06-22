import 'package:flutter/material.dart';

class StackArrange extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.expand(),
      child: Stack(
        textDirection: TextDirection.ltr,
        alignment: Alignment.centerLeft, //指定未定位或部分定位widget的对齐方式
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            child: Text("Hello world", style: TextStyle(color: Colors.white)),
            color: Colors.red,
          ),
          Positioned(
            left: 108.0,
            child: Text("I am Jack"),
          ),
          Positioned(
            top: 18.0,
            child: Text("Your friend"),
          )
        ],
      ),
    );
  }
}
