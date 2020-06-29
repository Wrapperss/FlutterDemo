/*
 * @Author: Wrappers 
 * @Date: 2020-06-29 15:55:47 
 * @Last Modified by:   Wrappers 
 * @Last Modified time: 2020-06-29 15:55:47 
 */

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
