/*
 * @Author: Wrappers 
 * @Date: 2020-06-29 15:58:13 
 * @Last Modified by:   Wrappers 
 * @Last Modified time: 2020-06-29 15:58:13 
 */

import 'package:flutter/material.dart';

class FormRoute extends StatefulWidget {
  @override
  _FormRouteState createState() => _FormRouteState();
}

class _FormRouteState extends State<FormRoute> {
  TextEditingController _unameController = new TextEditingController();
  TextEditingController _pwdController = new TextEditingController();
  GlobalKey _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Test"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
        child: Form(
          key: _formKey,
          autovalidate: true,
          child: Column(
            children: [
              TextFormField(
                autofocus: true,
                controller: _unameController,
                decoration: InputDecoration(
                    labelText: "用户名",
                    hintText: "用户名或邮箱",
                    icon: Icon(Icons.person)),
                validator: (value) {
                  return value.trim().length > 0 ? null : "用户名不能为空";
                },
              ),
              TextFormField(
                controller: _pwdController,
                decoration: InputDecoration(
                  labelText: "密码",
                  hintText: "您的密码",
                  icon: Icon(Icons.lock),
                ),
                obscureText: true,
                validator: (value) {
                  return value.trim().length > 5 ? null : "密码不能少于6位";
                },
              ),
              Padding(
                padding: EdgeInsets.only(top: 28.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: RaisedButton(
                        padding: EdgeInsets.all(15),
                        child: Text("登陆"),
                        color: Theme.of(context).primaryColor,
                        textColor: Colors.white,
                        onPressed: () {
                          if ((_formKey.currentState as FormState).validate()) {
                            print("提交");
                          }
                        },
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
