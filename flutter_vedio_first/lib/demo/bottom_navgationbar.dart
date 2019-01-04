import 'package:flutter/material.dart';

// 有状态的小部件
class BottomNavgationBarDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    //
    return BottomNavigationBarDemoState();
  }
}


class BottomNavigationBarDemoState extends State {

  int _currentindex = 0;

  void _onTapHandler (int index){
    // 设置状态
    // setState() 方法是在 statefulWidget 里面的
    setState(() {
          _currentindex = index;
        });
  }
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return BottomNavigationBar(
        // 如果底部导航栏的个数超过了四个 ，类型就会改变
        type: BottomNavigationBarType.fixed,
        // 选中的颜色  如果不设置的话，就显示主题色
        fixedColor: Colors.black,
        // 选中的index
        currentIndex: _currentindex,
        // 点击 方法回调
        onTap: _onTapHandler,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), title: Text('首页')),
          BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm), title: Text('会员')),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), title: Text('购物车')),
          BottomNavigationBarItem(
              icon: Icon(Icons.accessibility_new), title: Text('附近')),
        ]);
    }
}