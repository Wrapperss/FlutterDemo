import 'package:flutter/material.dart';

import 'InfiniteListView..dart';

class ListViewRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget divider1 = Divider(
      color: Colors.blue,
    );
    Widget divider2 = Divider(color: Colors.green);

    ListView speListView = ListView.separated(
      itemCount: 100,
      //列表项构造器
      itemBuilder: (BuildContext context, int index) {
        return ListTile(title: Text("$index"));
      },
      //分割器构造器
      separatorBuilder: (BuildContext context, int index) {
        return index % 2 == 0 ? divider1 : divider2;
      },
    );

    InfiniteListView infiniteListView = InfiniteListView();

    return Scaffold(
      appBar: AppBar(
        title: Text("List View"),
      ),
      body: Column(
        children: <Widget>[
          ListTile(
            title: Text(
              "商品列表",
              style: TextStyle(
                  color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: infiniteListView,
          )
        ],
      ),
    );
  }
}
