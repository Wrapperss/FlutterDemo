import 'package:flutter/material.dart';

class TipRoute extends StatelessWidget {
  TipRoute({
    Key key,
    @required this.text, // 接收一个text参数
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("提示"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [
              Text(text),
              RaisedButton(
                onPressed: () => Navigator.pop(context, "返回值"),
                child: Text("返回"),
              )
            ],
          ),
        ),
      ),
    );
  }
}