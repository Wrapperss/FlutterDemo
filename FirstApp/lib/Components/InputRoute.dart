import 'package:flutter/material.dart';

class InputRoute extends StatefulWidget {
  InputRoute({Key key}) : super(key: key);

  @override
  _InputRouteState createState() => _InputRouteState();
}

class _InputRouteState extends State<InputRoute> {
  TextEditingController _unameController = TextEditingController();
  TextEditingController _selectionController = TextEditingController();

  FocusNode focusNode1 = FocusNode();
  FocusNode focusNode2 = FocusNode();
  FocusScopeNode focusScopeNode;

  @override
  void initState() {
    _unameController.addListener(() {
      print(_unameController.text);
    });

    _selectionController.text = "Hello World";
    _selectionController.selection = TextSelection(
        baseOffset: 2, extentOffset: _selectionController.text.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Input"),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  labelText: "用户名",
                  hintText: "用户名或邮箱",
                  icon: Icon(Icons.person)),
              controller: _unameController,
              focusNode: focusNode1,
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "密码", hintText: "您的登录密码", icon: Icon(Icons.lock)),
              obscureText: true,
              textInputAction: TextInputAction.search,
              focusNode: focusNode2,
            ),
            TextField(
              decoration: InputDecoration(labelText: "selecttion"),
              controller: _selectionController,
            ),
            RaisedButton(
              child: Text("移动焦点"),
              onPressed: () {
                if (null == focusScopeNode) {
                  focusScopeNode = FocusScope.of(context);
                }
                focusScopeNode.requestFocus(focusNode2);
                // FocusScope.of(context).requestFocus(focusNode2);
              },
            ),
            RaisedButton(
              child: Text("隐藏键盘"),
              onPressed: () {
                focusNode1.unfocus();
                focusNode2.unfocus();
              },
            )
          ],
        ),
      ),
    );
  }
}
