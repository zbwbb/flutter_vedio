import 'package:flutter/material.dart';


class PopUpMenuButtonDemo extends StatefulWidget {
  @override
  _PopUpMenuButtonDemoState createState() => _PopUpMenuButtonDemoState();
}

class _PopUpMenuButtonDemoState extends State<PopUpMenuButtonDemo> {

  // 定义一个全局变量  用于接收
  String _currentMenuItem = 'Home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PopUpMenuButtonDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Text('_currentMenuItem is $_currentMenuItem'),
            SizedBox(
              height: 40,
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // 弹出式菜单按钮
                PopupMenuButton(
                  itemBuilder: (BuildContext context){
                    return [
                      // 每一项都是 popupmenuitem 类型
                      PopupMenuItem(
                        // T 表示泛型
                        value: 'home',
                        child: Text("home"),
                      ),
                      PopupMenuItem(
                        // T 表示泛型
                        value: 'member',
                        child: Text("member"),
                      ),
                      PopupMenuItem(
                        // T 表示泛型
                        value: 'find',
                        child: Text("find"),
                      ),
                    ];
                  },
                  // 处理回调 参数表示：被选中的参数的值
                  onSelected: (value){
                    // 改变状态用  setstate()
                    setState(() {
                      _currentMenuItem = value;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}