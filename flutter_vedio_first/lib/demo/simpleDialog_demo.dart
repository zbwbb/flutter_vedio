import 'package:flutter/material.dart';
import 'dart:async';


// 选择的 simpledialog 一般都是枚举类型
enum CustomOption { A, B, C, D }

class SimpleDialogDemo extends StatefulWidget {
  @override
  _SimpleDialogDemoState createState() => _SimpleDialogDemoState();
}

class _SimpleDialogDemoState extends State<SimpleDialogDemo> {

  String _choice = 'nothing';

  // 定义方法 打开对话框
  Future _openSimpleDialog() async {
    // 使用 showDialog() 方法创建
    // 该方法是一个异步执行的
    // 如果想要获取到真正的值，可以在前面加一个 await 标识，同时也要把外层的方法 添加标识
    // 该方法有异步返回值，返回一个 enum 类型的对象
    final option = await showDialog(
      context: context,
      // 用 build 构建
      builder: (BuildContext context) {
        // 返回一个简单对话框
        return SimpleDialog(
          title: Text('simpledialog'),
          children: <Widget>[
            // 添加对话选项
            SimpleDialogOption(
              child: Text('option A'),
              onPressed: () {
                // 由于弹出的试图仍然被导航管理，所以 pop 可以溢出当前界面
                Navigator.pop(context, CustomOption.A);
              },
            ),
            SimpleDialogOption(
              child: Text('option B'),
              onPressed: () {
                // 由于弹出的试图仍然被导航管理，所以 pop 可以溢出当前界面
                Navigator.pop(context, CustomOption.B);
              },
            ),
          ],
        );
      },
    );
  
    // 返回值

    switch (option) {
      case CustomOption.A:
      setState(() {
              _choice = 'A';
            });
        break;
      case CustomOption.B:
      setState(() {
              _choice = 'B';
            });
        break;  
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SimpleDialogDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('your choice is : $_choice'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.chrome_reader_mode),
        onPressed: _openSimpleDialog,
      ),
    );
  }
}
