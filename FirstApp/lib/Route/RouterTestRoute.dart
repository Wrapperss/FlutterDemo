import 'package:flutter/material.dart';
import 'TipRoute.dart';

class RouterTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text("打开提示页面"),
        onPressed: () async {
          // 打开`TipRoute`，并等待返回结果
          var result = await Navigator.push(context,
              MaterialPageRoute(builder: (context) {
            return TipRoute(
              text: "传入参数",
            );
          }));
          print("路由返回值是 $result");
        },
      ),
    );
  }
}
