/*
 * @Author: Wrappers 
 * @Date: 2020-06-29 15:54:51 
 * @Last Modified by: Wrappers
 * @Last Modified time: 2020-06-29 16:06:55
 */

import 'package:flutter/material.dart';
import 'PersonalComponents/CustomPaintRoute.dart';
import 'PersonalComponents/GradientButton.dart';

class FunctionComponentsRoute extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<FunctionComponentsRoute> {
  //定义一个状态，保存当前指针位置
  PointerEvent _event;

  //保存事件名
  String _operation = "No Gesture detected!";

  @override
  Widget build(BuildContext context) {
    Listener touchListener = Listener(
      child: Container(
        alignment: Alignment.center,
        color: Colors.blue,
        width: 300,
        height: 150,
        child: Text(_event?.toString() ?? "",
            style: TextStyle(color: Colors.white)),
      ),
      onPointerDown: (event) => setState(() => _event = event),
      onPointerMove: (PointerMoveEvent event) => setState(() => _event = event),
      onPointerUp: (PointerUpEvent event) => setState(() => _event = event),
    );

    GestureDetector dector = GestureDetector(
      child: Container(
        alignment: Alignment.center,
        color: Colors.red,
        width: 200,
        height: 100,
        child: Text(
          _operation,
          style: TextStyle(color: Colors.white),
        ),
      ),
      onTap: () => setState(() => _operation = "Tap"),
      onDoubleTap: () => setState(() => _operation = "DoubleTap"),
      onLongPress: () => setState(() => _operation = "LongPress"),
    );

    RaisedButton inheritedWidget = RaisedButton(
      child: Text("InheritedTestRoute"),
      onPressed: () => Navigator.pushNamed(context, "InheritedTestRoute"),
    );

    RaisedButton futureBuilderTest = RaisedButton(
      child: Text("Futrre Builder Test"),
      onPressed: () => Navigator.pushNamed(context, "FutureStreamBuilderTest"),
    );

    RaisedButton diologRoute = RaisedButton(
      child: Text("DialogRoute"),
      onPressed: () => Navigator.pushNamed(context, "DialogRoute"),
    );

    RaisedButton animationButton = RaisedButton(
      child: Text("Animation Route"),
      onPressed: () => Navigator.pushNamed(context, "AnimationRoute"),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Function Components Route",
          style: TextStyle(
              color: Colors.red.computeLuminance() < 0.5
                  ? Colors.white
                  : Colors.black),
        ),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              touchListener,
              dector,
              inheritedWidget,
              futureBuilderTest,
              diologRoute,
              animationButton,
              GradientButton(
                colors: [Colors.orange, Colors.red],
                height: 50.0,
                child: Text("Submit"),
              ),
              GradientButton(
                height: 50.0,
                colors: [Colors.lightGreen, Colors.green[700]],
                child: Text("Submit"),
              ),
              GradientButton(
                height: 50.0,
                colors: [Colors.lightBlue[300], Colors.blueAccent],
                child: Text("Submit"),
              ),
              RaisedButton(
                child: Text("五子棋"),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CustomPaintRoute())),
              )
            ],
          ),
        ),
      ),
    );
  }
}
