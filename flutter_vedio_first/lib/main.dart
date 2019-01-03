import 'package:flutter/material.dart';
import 'package:flutter_vedio_first/demo/listviewdemo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      // 
      return MaterialApp(
        // 首页布局
        home: Home(),
        // 主题颜色
        theme: ThemeData(
          primarySwatch: Colors.yellow,
        ),
      );
    }
}

/**
 * 自定义一个home控件
 */
class Home extends StatelessWidget {
  
  //
  @override
    Widget build(BuildContext context) {
      // 
      return Scaffold(
        // 背景色
          backgroundColor: Colors.grey[100],
          // 导航部分
          appBar: new AppBar(
            title: Text('zhoubinzhoubin'),
            elevation: 30,
          ),
          // 中间部分,用列表显示
          body: ListViewDemo(),
        );
    }
}



/**
 * 自定义一个控件
 */
class hello extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      // 所有子控件都居中显示
      return new Center(
        child: new Text('zhoubin',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 60,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),),
      );
    }
}