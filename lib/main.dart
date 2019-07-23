import 'package:flutter/cupertino.dart';
import './poetry/poetry.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'fdemo',
      theme: new CupertinoThemeData(
        primaryColor: CupertinoColors.darkBackgroundGray),
      home: new CupertinoTabScaffold(
        tabBar: new CupertinoTabBar(
          items: [new BottomNavigationBarItem(title: new Text('诗歌'), icon: new Text('诗歌')),
                  new BottomNavigationBarItem(title: new Text('fdemo'), icon: new Text('icon'))],
          currentIndex: 0,
          border: Border.all(width: 0, color: CupertinoColors.darkBackgroundGray),
          ),
          tabBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return new Poetry();
            }
            return CupertinoTabView(
              builder: (BuildContext context) {
                return new CupertinoPageScaffold(
                  child: Text('Fdemo'),
                );
              },
            );
          },
        ),
    );
  }
}