/*
 * @Author: Wrappers 
 * @Date: 2020-06-29 15:57:12 
 * @Last Modified by:   Wrappers 
 * @Last Modified time: 2020-06-29 15:57:12 
 */

import 'package:flutter/material.dart';

class TransformTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      color: Colors.black,
      child: Transform(
        alignment: Alignment.topRight,
        transform: Matrix4.skewY(0.3),
        child: Container(
          padding: EdgeInsets.all(8),
          color: Colors.deepOrange,
          child: Text("Apartment for rent!"),
        ),
      ),
    );
  }
}
