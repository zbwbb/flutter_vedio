import 'package:flutter/material.dart';
import 'package:flutter_vedio_first/demo/form_demo.dart';
import 'package:flutter_vedio_first/demo/checkbox_demo.dart';

class MaterialComponents extends StatelessWidget {
  // 定义方法 返回图片按钮部件
  final Widget _floatingActionbutton = FloatingActionButton(
    onPressed: () {},
    child: Icon(Icons.add),
    // 下边阴影
    elevation: 0.0,
    backgroundColor: Colors.orange,
    // shape: BeveledRectangleBorder(
    //   borderRadius: BorderRadius.circular(10.0),
    // ),
  );

  // 自定义方法 返回 文字图片 布局按钮
  final _floatingActionButtonExtent = FloatingActionButton.extended(
    label: Text(
      '添加',
      style: TextStyle(color: Colors.white),
    ),
    icon: Icon(Icons.add),
    onPressed: () {},
    backgroundColor: Colors.orange,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialComponents'),
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          ListItem(
            title: 'floatingbutton',
            page: FloatingActionButtonDemo(),
          ),
          ListItem(
            title: 'button',
            page: ButtonDemo(),
          ),
          ListItem(
            title: 'form',
            page: FormDemo(),
          ),
          ListItem(
            title: 'check',
            page: CheckBoxDemo(),
          ),
        ],
      ),
      // 悬浮按钮 默认会会在 底部按钮 位置 上面
      floatingActionButton: _floatingActionbutton,
      // 调整悬浮按钮位置
      // 抽象类 不能创建对象 可以直接用属性
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // 底部按钮 也可以使用 BottomNavigationBar
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 49.0,
        ),
        // 底部 切出一部分 圆形缺口直角
        shape: CircularNotchedRectangle(),
      ),
    );
  }
}

/**
 * ListItem
 */
class ListItem extends StatelessWidget {
  final String title;
  // page 就是要打开的界面
  final Widget page;
  // 初始化
  ListItem({this.title, this.page});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        title: Text(title),
        onTap: () {
          // 系统自带的导航
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return page;
          }));
        },
      ),
    );
  }
}

/**
 * 定义 点击item 打开的按钮
 */
class FloatingActionButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingActionButtonDemo'),
        elevation: 0.0,
      ),
    );
  }
}

/**
 * 演示 ButtonDemo
 */
class ButtonDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

// 定义变量
    final flatButtonDemo = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        // RaisedButton 默认是有背景色、阴影效果
        // 平面按钮 FlatButton
        RaisedButton(
          child: Text('button one'),
          onPressed: () {},
          // 飞溅的颜色
          splashColor: Colors.grey,
          textColor: Theme.of(context).primaryColor,
          // 阴影效果：可以控制和其他部件的间隔
          elevation: 10.0,
        ),
        SizedBox(width: 30,),
        FlatButton.icon(
          onPressed: () {},
          label: Text('button two'),
          icon: Icon(Icons.toc),
        )
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            flatButtonDemo,
          ],
        ),
      ),
    );
  }
}

/**
 * 演示 _WidgetDemo
 */
class _WidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('_WidgetDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[],
            ),
          ],
        ),
      ),
    );
  }
}
