import 'package:flutter/material.dart';
import 'DecotatedBoxTest.dart';
import 'PaddingTest.dart';
import 'BoxTest.dart';
import 'TransformTest.dart';

class ContainerRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container Route"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () => print("tap share action"),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.business), title: Text('Business')),
          BottomNavigationBarItem(
              icon: Icon(Icons.school), title: Text('School')),
        ],
        currentIndex: 1,
        fixedColor: Colors.blue,
        onTap: (value) => print("tap bottom navigation"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => print("tap floating Action Button"),
      ),
      body: TransformTest(),
    );
  }
}
