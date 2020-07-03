import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DialogRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    RaisedButton button1 = RaisedButton(
      child: Text("AlertDialog"),
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text("提示"),
            content: Text("内容内容容内容容内容容内容容容容内容容内容"),
            actions: <Widget>[
              RaisedButton(
                child: Text("确定"),
                onPressed: () => Navigator.pop(context),
              )
            ],
          ),
        );
      },
    );

    CupertinoButton cupertinoButton = CupertinoButton(
      child: Text("iOS alert"),
      onPressed: () {
        showDialog(
            context: context,
            builder: (context) => CupertinoAlertDialog(
                  title: Text("alert"),
                  content: Text("内容内容容内容容内容容内容容容容内容容内容"),
                  actions: <Widget>[
                    CupertinoButton(
                      child: Text("确认"),
                      onPressed: () => Navigator.pop(context),
                    ),
                    CupertinoButton(
                      child: Text("取消"),
                      onPressed: () => Navigator.pop(context),
                    )
                  ],
                ));
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog Route"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[button1, cupertinoButton],
          ),
        ),
      ),
    );
  }
}
