import 'package:flutter/material.dart';

class InheritedTestRoute extends StatefulWidget {
  @override
  _InheritedTestRouteState createState() => _InheritedTestRouteState();
}

class _InheritedTestRouteState extends State<InheritedTestRoute> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("InheritedTestRoute"),
      ),
      body: Center(
        child: ShareDataWidget(
            data: count,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: _InheritedTest(),
                ),
                RaisedButton(
                  child: Text("Increment"),
                  //每点击一次，将count自增，然后重新build,ShareDataWidget的data将被更新
                  onPressed: () => setState(() => ++count),
                ),
              ],
            )),
      ),
    );
  }
}

class ShareDataWidget extends InheritedWidget {
  final int data; //需要在子树中共享的数据，保存点击次数

  ShareDataWidget({@required this.data, Widget child}) : super(child: child);

  //定义一个便捷方法，方便子树中的widget获取共享数据
  static ShareDataWidget of(BuildContext context) {
    // return context.dependOnInheritedWidgetOfExactType<ShareDataWidget>();
      return context.getElementForInheritedWidgetOfExactType<ShareDataWidget>().widget;
  }

  @override
  bool updateShouldNotify(ShareDataWidget oldWidget) {
    //如果返回true，则子树中依赖(build函数中有调用)本widget
    //的子widget的`state.didChangeDependencies`会被调用
    return oldWidget.data != data;
  }
}

class _InheritedTest extends StatefulWidget {
  @override
  __InheritedTestState createState() => __InheritedTestState();
}

class __InheritedTestState extends State<_InheritedTest> {
  @override
  Widget build(BuildContext context) {
    return Text(ShareDataWidget.of(context).data.toString());
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    //父或祖先widget中的InheritedWidget改变(updateShouldNotify返回true)时会被调用。
    //如果build中没有依赖InheritedWidget，则此回调不会被调用。
    print("Dependencies change");
  }
}
