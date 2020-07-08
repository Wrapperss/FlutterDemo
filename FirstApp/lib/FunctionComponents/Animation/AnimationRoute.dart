import 'package:flutter/material.dart';
import 'FadeRoute.dart';
import 'HeroAnimationRout.dart';
import 'ScaleAnimationRoute.dart';
import 'StaggerRoute.dart';

class AnimationRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text("Scale"),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ScaleAnimationRoute(),
                    ));
              },
            ),
            RaisedButton(
                child: Text("Fade"),
                onPressed: () =>
                    Navigator.push(context, FadeRoute(builder: (context) {
                      return ScaleAnimationRoute();
                    }))),
            InkWell(
              child: Hero(
                tag: "avatar",
                child: ClipOval(
                  child: Image.asset(
                    "images/avatar.jpeg",
                    width: 50,
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(context, PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) {
                    return FadeTransition(
                      opacity: animation,
                      child: Scaffold(
                        appBar: AppBar(
                          title: Text("原图"),
                        ),
                        body: HeroAnimationRoute(),
                      ),
                    );
                  },
                ));
              },
            ),
            RaisedButton(
              child: Text("Stagger"),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => StaggerRoute(),
                  )),
            )
          ],
        ),
      ),
    );
  }
}

class HeroAnimationRout {}
