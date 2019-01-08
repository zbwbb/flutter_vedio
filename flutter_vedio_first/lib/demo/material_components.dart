import 'package:flutter/material.dart';

class MaterialComponents extends StatelessWidget {

  // 构建方法内部 定义方法 返回部件
    final Widget floatingActionbutton = FloatingActionButton(
      onPressed: (){
        },
        child: Icon(Icons.add),
        // 下边阴影
        elevation: 0.0,
        backgroundColor: Colors.orange,
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
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
          ListItem(title: 'zhoubin',page: FloatingActionButtonDemo(),)
        ],
      ),
      // 悬浮按钮
      floatingActionButton: floatingActionbutton,
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
        title: Text('title'),
        onTap: (){
          // 系统自带的导航 
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context){
                return page;
              }
            )
          );
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
