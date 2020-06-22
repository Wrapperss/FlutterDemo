import 'package:flutter/material.dart';

import 'FlexArrange.dart';
import 'RowAndColum.dart';
import 'FlowArrange.dart';
import 'StackArrange.dart';
import 'AlignArrange.dart';

class ArrangeRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Arrange"),
      ),
      // body: RowAndColum(),
      // body: FlexArrange(),
      // body: FlowArrange(),
      // body: StackArrange(),
      body: AlignArrange(),
    );
  }
}
