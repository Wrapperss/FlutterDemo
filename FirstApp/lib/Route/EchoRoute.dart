import 'package:flutter/material.dart';

class EchoRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Map args = ModalRoute.of(context).settings.arguments;
    print("$args");
    return Scaffold(
      appBar: AppBar(
        title: Text(args["title"]),
      ),
      body: Center(
        child: Text(args["body"]),
      ),
    );
  }
}
