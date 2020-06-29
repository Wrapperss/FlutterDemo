/*
 * @Author: Wrappers 
 * @Date: 2020-06-29 15:57:37 
 * @Last Modified by:   Wrappers 
 * @Last Modified time: 2020-06-29 15:57:37 
 */

import 'package:flutter/material.dart';
import 'InfiniteGridView.dart';

class GridRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const icons = <Icon>[
      Icon(Icons.ac_unit),
      Icon(Icons.airport_shuttle),
      Icon(Icons.all_inclusive),
      Icon(Icons.beach_access),
      Icon(Icons.cake),
      Icon(Icons.free_breakfast)
    ];

    GridView gridView1 = GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, childAspectRatio: 1),
      children: icons,
    );

    GridView gridView2 = GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 1,
      children: icons,
    );

    GridView gridView3 = GridView(
      padding: EdgeInsets.zero,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 120, childAspectRatio: 2),
      children: icons,
    );

    GridView gridView4 = GridView.extent(
      maxCrossAxisExtent: 120,
      childAspectRatio: 2,
      children: icons,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Grid"),
      ),
      body: InfiniteGridView(),
    );
  }
}
