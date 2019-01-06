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
