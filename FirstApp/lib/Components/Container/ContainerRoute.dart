import 'package:flutter/material.dart';
import 'PaddingTest.dart';
import 'BoxTest.dart';

class ContainerRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container Route"),
      ),
      // body: PaddingTest(),
      body: BoxTest(),
    );
  }
}
