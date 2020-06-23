import 'package:flutter/material.dart';

class BoxTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ConstrainedBox
    Widget redBox = DecoratedBox(
      decoration: BoxDecoration(color: Colors.red),
    );
    Widget constrainedBox = ConstrainedBox(
      constraints: BoxConstraints(minWidth: double.infinity, minHeight: 50),
      child: Container(
        height: 5.0,
        child: redBox,
      ),
    );


    return constrainedBox;
  }
}
