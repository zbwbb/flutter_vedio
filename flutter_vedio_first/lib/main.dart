import 'package:flutter/material.dart';
import 'package:flutter_vedio_first/demo/listviewdemo.dart';
import 'package:flutter_vedio_first/demo/drawer.dart';
import 'package:flutter_vedio_first/demo/bottom_navgationbar.dart';
import 'package:flutter_vedio_first/demo/Basic_demo.dart';
import 'package:flutter_vedio_first/demo/layout_demo.dart';
import 'package:flutter_vedio_first/demo/ViewDemo.dart';
import 'package:flutter_vedio_first/demo/sliver_demo.dart';
import 'package:flutter_vedio_first/demo/navigatior_demo.dart';
import 'package:flutter_vedio_first/demo/form_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      // 
      return MaterialApp(
        // 首页布局
        // home 属性也同时定义了根路由，如果这里不指定的话，就要到routers里面去指定
        // home: NavigatorDemo(),
        // 主题信息
        theme: ThemeData(
          // 主题颜色
          primarySwatch: Colors.orange,
          // 点击效果添加
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
          // 设置点击效果的颜色
          splashColor: Colors.white70,
        ),
        // 去掉调试条目
        debugShowCheckedModeBanner: false,
        // 可以实现指定 路由的名字 以后直接使用Navigator.pushNamed
        initialRoute: '/form',
        routes: {
          // 斜线 "/" 代表路由的‘根’：初始路由， 默认是home属性设置的部件
          // 如果不在home里面指定根路由，也可以按照下面的方式指定
          // 定义根路由的时候不能加名字
          '/':(context)=>Home(),
          '/about' : (context)=>Page(title: 'push',),
          '/form':(context)=>FormDemo()
        },
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
        length: 4,
        // scaffold 提供界面的基本结构
        child: Scaffold(
        // 背景色
          backgroundColor: Colors.grey[100],
          // 导航部分 appbar 一般都是放在scaffold里面
          appBar: new AppBar(
            title: Text('zhoubinzhoubin'),
            // 阴影
            elevation: 4,
            // 左侧的按钮 
            // leading: IconButton(
            //   icon: Icon(Icons.menu),
            //   tooltip: 'menu',
            //   onPressed: null,
            // ),  
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
                Tab(
                  icon: Icon(Icons.local_bar),
                ),
              ],
            ),
          ),
          // 中间视图部分
          body: TabBarView(
            children: <Widget>[
              ListViewDemo(),
              BasicDemo(),
              LayoutDemo(),
              SliverDemo(),
            ],
          ),
          // 抽屉 enddrawer:右侧
          // Drawer：在抽屉里使用 ListView， DrawerHeader，ListTile
          drawer: DrawerDemo(),
          // 底部tabbar
          bottomNavigationBar: BottomNavgationBarDemo(),
        ),
      );
    }
}

