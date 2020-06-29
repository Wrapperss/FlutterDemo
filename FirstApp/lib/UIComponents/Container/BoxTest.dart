/*
 * @Author: Wrappers 
 * @Date: 2020-06-29 15:56:42 
 * @Last Modified by:   Wrappers 
 * @Last Modified time: 2020-06-29 15:56:42 
 */

import 'package:flutter/material.dart';

class BoxTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget redBox = DecoratedBox(
      decoration: BoxDecoration(color: Colors.red),
    );

    // ConstrainedBox
    Widget constrainedBox = ConstrainedBox(
      constraints: BoxConstraints(minWidth: double.infinity, minHeight: 50),
      child: Container(
        height: 5.0,
        child: redBox,
      ),
    );

    Widget sizeBox = SizedBox(width: 80, height: 80, child: redBox);

    return sizeBox;
  }
}
