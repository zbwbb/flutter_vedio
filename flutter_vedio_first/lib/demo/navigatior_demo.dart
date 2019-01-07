import 'package:flutter/material.dart';

class NavigatorDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // 无样式的按钮
            FlatButton(
              child: Text('nihao', style: TextStyle(color: Colors.black, fontSize: 20.0),),
              onPressed: (){
                // 可以直接获取系统的导航
                Navigator.of(context).pushNamed('/about');
              },
            ),
          ],
        ),
      ),
    );
  }
}


class Page extends StatelessWidget {
  // 接收参数
  final String title;
  Page({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        elevation: 0.0,
      ),
      // 自定义返回键
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back_ios),
        onPressed: (){
          Navigator.of(context).pop(true);
        },
      ),
    );
  }
}