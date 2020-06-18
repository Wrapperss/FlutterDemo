import 'package:flutter/material.dart';
import 'Route/EchoRoute.dart';
import 'Route/NewRoute.dart';
import 'Route/RouterTestRoute.dart';
import 'package:english_words/english_words.dart';

import 'Widget/CounterWidget.dart';

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
        primarySwatch: Colors.yellow,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        "/": (context) => MyHomePage(title: "Flutter Demo Home Page"), // 注册首页路由
        "new_page": (context) => NewRoute(),
        "echo_route": (context) => EchoRoute(),
        "counter": (context) => CounterWidget(),
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
  int _counter = 10;

  void _incrementCounter() {
    setState(() {
      // _counter++;
      _counter = _counter + 10;
    });
  }

  void _openNewPage() {
    // Navigator.push(
    //     context,
    //     MaterialPageRoute(
    //         builder: (context) {
    //           return NewRoute();
    //         },
    //         fullscreenDialog: true));
    Navigator.pushNamed(context, "new_page");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              WordPair.random().toString(),
              style: TextStyle(fontSize: 20, color: Colors.red),
            ),
            Text.rich(TextSpan(children: [
              TextSpan(text: "Home: "),
              TextSpan(
                  text: "https://flutterchina.club",
                  style: TextStyle(color: Colors.blue)),
            ])),
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            FlatButton(
              child: Text(
                "open new route",
                style: TextStyle(fontSize: 20),
              ),
              textColor: Colors.red,
              color: Colors.yellow,
              onPressed: _openNewPage,
            ),
            FlatButton(
              child: Text("echo_route"),
              color: Colors.blue,
              onPressed: () => {
                Navigator.pushNamed(context, "echo_route",
                    arguments: {"title": "EchoRoute", "body": "传递的参数"})
              },
            ),
            RouterTestRoute(),
            FlatButton(
              child: Text("CounterWidget"),
              onPressed: () => {Navigator.pushNamed(context, "counter")},
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
