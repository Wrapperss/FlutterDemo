/*
 * @Author: Wrappers 
 * @Date: 2020-07-10 11:36:38 
 * @Last Modified by:   Wrappers 
 * @Last Modified time: 2020-07-10 11:36:38 
 */

import 'package:flutter/material.dart';

class FutureStreamBuilderTest extends StatelessWidget {
  Future<String> mockNetworkData() async {
    return Future.delayed(Duration(seconds: 2), () => "我是从互联网上获取的数据");
  }

  Stream<int> counter() {
    return Stream.periodic(Duration(seconds: 1), (i) {
      return i;
    });
  }

  @override
  Widget build(BuildContext context) {
    FutureBuilder futureBuilder = FutureBuilder(
      future: mockNetworkData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return Text("Error: ${snapshot.error}");
          } else {
            return Text("Contents: ${snapshot.data}");
          }
        } else {
          return CircularProgressIndicator();
        }
      },
    );

    StreamBuilder streamBuilder = StreamBuilder<int>(
      stream: counter(), //
      //initialData: ,// a Stream<int> or null
      builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
        if (snapshot.hasError) return Text('Error: ${snapshot.error}');
        switch (snapshot.connectionState) {
          case ConnectionState.none:
            return Text('没有Stream');
          case ConnectionState.waiting:
            return Text('等待数据...');
          case ConnectionState.active:
            return Text('active: ${snapshot.data}');
          case ConnectionState.done:
            return Text('Stream已关闭');
        }
        return null; // unreachable
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Future Builder Test"),
      ),
      body: Center(
        child: streamBuilder,
      ),
    );
  }
}
