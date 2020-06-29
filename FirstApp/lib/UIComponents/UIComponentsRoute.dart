/*
 * @Author: Wrappers 
 * @Date: 2020-06-29 15:55:05 
 * @Last Modified by:   Wrappers 
 * @Last Modified time: 2020-06-29 15:55:05 
 */

import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import '../Route/RouterTestRoute.dart';

class UIComponentsRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("UI控件相关"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
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
              FlatButton(
                child: Text(
                  "open new route",
                  style: TextStyle(fontSize: 20),
                ),
                textColor: Colors.red,
                color: Colors.yellow,
                onPressed: () => Navigator.pushNamed(context, "new_page"),
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
              ),
              Image(
                image: AssetImage("images/icon_alipay_recepit_alert@3x.png"),
                width: 100,
              ),
              Image(
                image: NetworkImage(
                    "https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=798385081,3821355100&fm=26&gp=0.jpg"),
                width: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.accessible,
                    color: Colors.green,
                  ),
                  Icon(
                    Icons.error,
                    color: Colors.green,
                  ),
                  Icon(
                    Icons.fingerprint,
                    color: Colors.green,
                  ),
                ],
              ),
              RaisedButton(
                child: Text(
                  "Switch & CheckBox",
                  style: TextStyle(color: Colors.yellow),
                ),
                color: Colors.red,
                onPressed: () {
                  Navigator.pushNamed(context, "switchAndCheckBox");
                },
              ),
              RaisedButton(
                child: Text("Input Route"),
                onPressed: () => Navigator.pushNamed(context, "InputRoute"),
              ),
              RaisedButton(
                child: Text("Form Route"),
                onPressed: () => Navigator.pushNamed(context, "FormRoute"),
              ),
              RaisedButton(
                child: Text("ArrangeRoute"),
                onPressed: () => Navigator.pushNamed(context, "ArrangeRoute"),
              ),
              RaisedButton(
                child: Text("Container Route"),
                onPressed: () => Navigator.pushNamed(context, "ContainerRoute"),
              ),
              RaisedButton(
                child: Text("Clip Route"),
                onPressed: () => Navigator.pushNamed(context, "ClipRoute"),
              ),
              SizedBox(
                height: 3,
                child: LinearProgressIndicator(
                  backgroundColor: Colors.grey[200],
                  valueColor: AlwaysStoppedAnimation(Colors.blue),
                ),
              ),
              SizedBox(
                height: 20,
                width: 20,
                child: CircularProgressIndicator(
                  backgroundColor: Colors.grey[200],
                  valueColor: AlwaysStoppedAnimation(Colors.blue),
                ),
              ),
              RaisedButton(
                child: Text("List View"),
                onPressed: () => Navigator.pushNamed(context, "ListViewRoute"),
              ),
              FlatButton(
                child: Text("List View Scroll"),
                onPressed: () =>
                    Navigator.pushNamed(context, "ListViewScrollRoute"),
              ),
              RaisedButton(
                child: Text("Grid View"),
                onPressed: () => Navigator.pushNamed(context, "GridRoute"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
