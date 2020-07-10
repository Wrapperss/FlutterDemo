/*
 * @Author: Wrappers 
 * @Date: 2020-07-10 11:35:58 
 * @Last Modified by:   Wrappers 
 * @Last Modified time: 2020-07-10 11:35:58 
 */

import 'package:flutter/cupertino.dart';

class HeroAnimationRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Hero(
        tag: "avatar", //唯一标记，前后两个路由页Hero的tag必须相同
        child: Image.asset("images/avatar.jpeg"),
      ),
    );
  }
}
