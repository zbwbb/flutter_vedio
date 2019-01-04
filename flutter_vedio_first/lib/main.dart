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
        // 主题信息
        theme: ThemeData(
          // 主题颜色
          primarySwatch: Colors.yellow,
          // 点击效果添加
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
          // 设置点击效果的颜色
          splashColor: Colors.white70,
        ),
        // 去掉调试条目
        debugShowCheckedModeBanner: false,
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
      // DefaultTabController 提供默认的tabar控制器
      return DefaultTabController(
        // 设置控制器的个数
        length: 3,
        // scaffold 提供界面的基本结构
        child: Scaffold(
        // 背景色
          backgroundColor: Colors.grey[100],
          // 导航部分 appbar 一般都是放在scaffold里面
          appBar: new AppBar(
            title: Text('zhoubinzhoubin'),
            // 阴影
            elevation: 3,
            leading: IconButton(
              icon: Icon(Icons.menu),
              tooltip: 'menu',
              onPressed: null,
            ),  
            actions: <Widget>[
              IconButton(
              icon: Icon(Icons.message),
              tooltip: 'action',
              onPressed: null,
            ),
            ],
            // 设置导航栏下面的tabbar
            bottom: TabBar(
              // 设置没有被选中的tab 的样式
              unselectedLabelColor: Colors.black38,
              // 设置下划线的颜色
              indicatorColor: Colors.black54,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 3,
              // tabs 是个数组，里面包含Tab
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.local_activity),
                ),
                Tab(
                  icon: Icon(Icons.local_airport),
                ),
                Tab(
                  icon: Icon(Icons.local_cafe),
                ),
              ],
            ),
          ),
          // 中间视图部分
          body: TabBarView(
            children: <Widget>[
              Icon(Icons.local_florist,size: 128.00,color: Colors.black12,),
              Icon(Icons.change_history,size: 128.00,color: Colors.black12,),
              Icon(Icons.directions_bike,size: 128.00,color: Colors.black12,),
            ],
          ),
          // 抽屉 enddrawer:右侧
          // Drawer：在抽屉里使用 ListView， DrawerHeader，ListTile
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  child: Text('header'.toUpperCase()),
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                  ),
                ),
                ListTile(
                  title: Text('Messages', textAlign:TextAlign.right,),
                  // 在标题的左边或者右边设置图片
                  trailing: Icon(Icons.message,color: Colors.black12,size: 20.0,),
                ),
                ListTile(
                  title: Text('Messages', textAlign:TextAlign.right,),
                  // 在标题的左边或者右边设置图片
                  trailing: Icon(Icons.message,color: Colors.black12,size: 20.0,),
                ),
                ListTile(
                  title: Text('Messages', textAlign:TextAlign.right,),
                  // 在标题的左边或者右边设置图片
                  trailing: Icon(Icons.message,color: Colors.black12,size: 20.0,),
                ),
                ListTile(
                  title: Text('Messages', textAlign:TextAlign.right,),
                  // 在标题的左边或者右边设置图片
                  trailing: Icon(Icons.message,color: Colors.black12,size: 20.0,),
                )
              ],
            ),
          )
        ),
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