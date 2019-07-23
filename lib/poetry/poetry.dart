import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:math';

class Poetry extends StatefulWidget {
  Poetry({Key key}) : super(key: key);

  _PoetryState createState() => _PoetryState();
}

class _PoetryState extends State<Poetry> {
  var poetry = '诗歌';
  var isNewData = false;

  void getPoetry() async {
    try {
      Response response = await Dio().get('https://api.gushi.ci/all.json');
      print(response);
      poetry = response.data['content'];
      setState(() {
        isNewData = true;
      });
    } catch (error) {
      print(error.toString());
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('initState');
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print('didChangeDependencies');
  }

  @override
  void didUpdateWidget(Poetry oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print('didUpdateWidget');
  }

  void _handleTap() {
    isNewData = false;
    getPoetry();
  }

  @override
  Widget build(BuildContext context) {
    if (!isNewData) {
      getPoetry();
    }
    return new GestureDetector(
      onTap: _handleTap,
      child: Container(
        child: CupertinoPageScaffold(
          navigationBar: new CupertinoNavigationBar(
            middle: new Text('诗歌'),
          ),
          child: new Center(
            child: new Text(
              poetry,
              style: new TextStyle(color: Colors.white),
            ),
          ),
          backgroundColor: randomColor(),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}

Color randomColor() {
    return Color.fromARGB(255, Random().nextInt(256)+0, Random().nextInt(256)+0, Random().nextInt(256)+0);
}
