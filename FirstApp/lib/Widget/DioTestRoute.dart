/*
 * @Author: Wrappers 
 * @Date: 2020-07-13 14:13:51 
 * @Last Modified by: Wrappers
 * @Last Modified time: 2020-07-13 15:08:07
 */

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class DioTestRoute extends StatefulWidget {
  @override
  _DioTestRouteState createState() => _DioTestRouteState();
}

class _DioTestRouteState extends State<DioTestRoute> {
  Dio _dio = Dio();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DioTestRoute"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: FutureBuilder(
          future: _dio.get("https://api.github.com/orgs/flutterchina/repos"),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              Response response = snapshot.data;
              if (snapshot.hasError) {
                return Text(snapshot.error.toString());
              }
              return ListView(
                children: response.data
                    .map<Widget>((e) => ListTile(title: Text(e["full_name"])))
                    .toList(),
              );
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
