/*
 * @Author: Wrappers 
 * @Date: 2020-06-29 15:55:21 
 * @Last Modified by: Wrappers
 * @Last Modified time: 2020-07-13 15:28:49
 */

import 'package:FirstApp/Widget/HttpTestRoute.dart';
import 'package:flutter/material.dart';
import 'FunctionComponents/Animation/AnimationRoute.dart';
import 'FunctionComponents/Dialog/DialogRoute.dart';
import 'FunctionComponents/FunctionComponentsRoute.dart';
import 'FunctionComponents/FutureStream/FutureStreamBuilderTest.dart';
import 'FunctionComponents/InheritedWidget/InheritedTestRoute.dart';
import 'UIComponents/Arrange/ArrangeRoute.dart';
import 'UIComponents/ClipRoute.dart';
import 'UIComponents/Container/ContainerRoute.dart';
import 'UIComponents/FormRoute.dart';
import 'UIComponents/Grid/GridRoute.dart';
import 'UIComponents/InputRoute.dart';
import 'UIComponents/List/ListViewRoute.dart';
import 'UIComponents/List/ListViewScrollRoute.dart';
import 'UIComponents/SwitchAndCheckBoxTestRoute.dart';
import 'Route/EchoRoute.dart';
import 'Route/NewRoute.dart';
import 'UIComponents/UIComponentsRoute.dart';
import 'Widget/CounterWidget.dart';
import 'Widget/FileOperationRoute.dart';
import 'Widget/DioTestRoute.dart';
import 'Widget/WebSocketRoute.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        "/": (context) => MyHomePage(title: "Flutter Demo Home Page"), // 注册首页路由

        "UIComponentsRoute": (context) => UIComponentsRoute(),
        "new_page": (context) => NewRoute(),
        "echo_route": (context) => EchoRoute(),
        "counter": (context) => CounterWidget(),
        "switchAndCheckBox": (context) => SwitchAndCheckBoxTestRoute(),
        "InputRoute": (context) => InputRoute(),
        "FormRoute": (context) => FormRoute(),
        "ArrangeRoute": (context) => ArrangeRoute(),
        "ContainerRoute": (context) => ContainerRoute(),
        "ClipRoute": (context) => ClipRoute(),
        "ListViewRoute": (context) => ListViewRoute(),
        "GridRoute": (context) => GridRoute(),
        "ListViewScrollRoute": (context) => ListViewScrollRoute(),

        "FunctionComponentsRoute": (context) => FunctionComponentsRoute(),
        "InheritedTestRoute": (context) => InheritedTestRoute(),
        "FutureStreamBuilderTest": (context) => FutureStreamBuilderTest(),
        "DialogRoute": (context) => DialogRoute(),
        "AnimationRoute": (context) => AnimationRoute(),
      },
      onGenerateRoute: (RouteSettings settings) {
        print("做一些全局的路由跳转前置处理逻辑");
        return MaterialPageRoute(builder: (context) {
          String routeName = settings.name;
        });
      },
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    RaisedButton uiButton = RaisedButton(
      child: Text(
        "UI Components Route",
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
      color: Colors.yellow,
      clipBehavior: Clip.antiAlias,
      onPressed: () => Navigator.pushNamed(context, "UIComponentsRoute"),
    );

    RaisedButton functionButton = RaisedButton(
      child: Text(
        "Function Components Route",
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
      color: Colors.red,
      clipBehavior: Clip.antiAlias,
      onPressed: () => Navigator.pushNamed(context, "FunctionComponentsRoute"),
    );

    RaisedButton fileButton = RaisedButton(
      child: Text(
        "File Operation",
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
      color: Colors.green,
      onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FileOperationRoute(),
          )),
    );

    RaisedButton httpClientButton = RaisedButton(
      child: Text("Http Test Route"),
      color: Colors.amber,
      onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HttpTestRoute(),
          )),
    );

    RaisedButton dioTestButton = RaisedButton(
      child: Text("DioTestButton"),
      color: Colors.cyan,
      onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DioTestRoute(),
          )),
    );

    RaisedButton webSocketButton = RaisedButton(
      child: Text("WebSocketRoute"),
      color: Colors.amber,
      onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WebSocketRoute(),
          )),
    );

    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              uiButton,
              functionButton,
              fileButton,
              httpClientButton,
              dioTestButton,
              webSocketButton,
            ],
          ),
        ),
      ),
    );
  }
}
