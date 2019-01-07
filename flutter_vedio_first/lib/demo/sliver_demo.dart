import 'package:flutter/material.dart';
import 'package:flutter_vedio_first/model/post.dart';

class SliverDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
      // 创建一个  自定义滑动视图
      body: CustomScrollView(
        slivers: <Widget>[
              // sliverAppBar 导航工具蓝  与appbar不同的是，这个部件是可以改变的
          SliverAppBar(
            title: Text('zhoubin'),
            // 不随滑动改变
            // pinned: true,
            // 这个属性：当视图下滑的时候  导航工具栏就会显示出来
            floating: true,
          ),
          // 安全区是最外层
          SliverSafeArea(
            sliver: SliverPadding(
              // 添加内边距 要把子控件嵌套在sliverpadding 内部
              padding: EdgeInsets.all(10.0),
              sliver: SliverListDemo(),
            ),
          ),
        ],
      ),
    );
  }
}

/**
 * slivergrid
 */
class SliverListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //
    return SliverList(
      // 用来设置子控件视图
      delegate: SliverChildBuilderDelegate(
        // 参数是个方法
        (BuildContext context, int index) {
          // 边距控件 padding
          return Padding(
            padding: EdgeInsets.all(8.0),
            // 设置一些基础效果 可以用这个控件
            child: Material(
              borderRadius: BorderRadius.circular(20),
              elevation: 15.0,
              shadowColor: Colors.black,
              // 堆叠效果
              child: Stack(
                children: <Widget>[
                  // 让子控件按照一定的比例显示
                  AspectRatio(
                    aspectRatio: 4 / 3,
                    child: Container(
                      child: Image.network(
                        posts[index].imageUrl,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 32.0,
                    left: 32.0,
                    child: Column(
                      // 设置子控件在交叉轴上的对其方式
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(posts[index].title, style: TextStyle(color: Colors.red,fontSize: 30),),
                        Text(posts[index].title, style: TextStyle(color: Colors.black,fontSize: 20),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        childCount: posts.length,
      ),
    );
  }
}

/**
 * slivergrid
 */
class SliverGridDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //
    return SliverGrid(
      // griddelegate 用来设置视图整体样式
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.9),
      // 用来设置子控件视图
      delegate: SliverChildBuilderDelegate(
        // 参数是个方法
        (BuildContext context, int index) {
          return Container(
            child: Image.network(
              posts[index].imageUrl,
              fit: BoxFit.fill,
            ),
          );
        },
        childCount: posts.length,
      ),
    );
  }
}
