import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:math';

class Poetry extends StatefulWidget {
  Poetry({Key key}) : super(key: key);

  _PoetryState createState() => _PoetryState();
}

class _PoetryState extends State<Poetry> {
  var origin = 'falflajf';
  var content = 'fafaf';
  var author = 'fafafa';
  var isNewData = false;

  void getPoetry() async {
    try {
      Response response = await Dio().get('https://api.gushi.ci/all.json');
      content = response.data['content'];
      origin = response.data['origin'];
      author = response.data['author'];
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
          navigationBar: CupertinoNavigationBar(
            middle: Text('诗歌'),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    origin,
                    style: TextStyle(color: Colors.black, fontSize: 26),
                  ),
                  Text(
                    author,
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  Text(
                    content,
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ],
              ),
            ],
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
  return Color.fromARGB(255, Random().nextInt(256) + 0,
      Random().nextInt(256) + 0, Random().nextInt(256) + 0);
}
