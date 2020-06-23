import 'package:flutter/material.dart';

class AlignArrange extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[50],
      child: Align(
        widthFactor: 2,
        heightFactor: 2,
        alignment: Alignment(1, 1),
        child: FlutterLogo(
          size: 60,
        ),
      ),
    );
  }
}
