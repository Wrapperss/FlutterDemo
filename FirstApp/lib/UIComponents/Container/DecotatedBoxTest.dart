/*
 * @Author: Wrappers 
 * @Date: 2020-06-29 15:56:59 
 * @Last Modified by:   Wrappers 
 * @Last Modified time: 2020-06-29 15:56:59 
 */

import 'package:flutter/material.dart';

class DecotatedBoxTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.red, Colors.orange[700]]),
        borderRadius: BorderRadius.circular(3),
        boxShadow: [
          BoxShadow(
              color: Colors.black54, offset: Offset(2.0, 2.0), blurRadius: 4)
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 18.0),
        child: Text(
          "Login",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
