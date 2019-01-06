import 'package:flutter/material.dart';
import 'package:flutter_vedio_first/model/post.dart';

class ViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //
    return GridViewBuildDemo();
  }
}

/**
 * pageview
 */
class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //
    return PageView(
      // 是否允许页面根据滑动尺寸自动翻页
      pageSnapping: true,
      // 滚动方向
      scrollDirection: Axis.horizontal,
      // 滑动回调
      onPageChanged: (currentindex) => debugPrint('zhoubinzhoubin'),
      // 调整页面的默认显示
      controller: PageController(
        initialPage: 1,
        // 视图占得比例
        viewportFraction: 0.75,
      ),
      children: <Widget>[
        Container(
          color: Colors.brown[500],
          alignment: Alignment(0.8, 0.8),
          child: Icon(
            Icons.local_hospital,
            size: 40.0,
          ),
        ),
        Container(
          color: Colors.cyan[100],
          child: Icon(
            Icons.local_activity,
            size: 40.0,
          ),
        ),
        Container(
          color: Colors.deepOrange[300],
          child: Icon(
            Icons.local_airport,
            size: 40.0,
          ),
        ),
      ],
    );
  }
}

/**
 * pageview.build()
 */
class PageViewBuildDemo extends StatelessWidget {
  // 定义生成item的方法
  Widget _itemcreat(BuildContext context, int index) {
    //
    return Stack(
      // 在 stack 里面的子视图，可以叠加
      children: <Widget>[
        // 盒子自动延展整个尺寸
        SizedBox.expand(
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.fill,
          ),
        ),
        // 位置
        Positioned(
          left: 30,
          bottom: 100,
          right: 30,
          child: Column(
            children: <Widget>[
              Text(
                posts[index].title,
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              Text(
                posts[index].author,
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    //
    return PageView.builder(
      itemCount: posts.length,
      itemBuilder: _itemcreat,
      controller: PageController(
        initialPage: posts.length ~/ 2,
        viewportFraction: 0.8,
      ),
    );
  }
}

/**
 * GridView.count 网格视图 项目固定数量
 */
class GrideViewCountDemo extends StatelessWidget {
// 自定义方法  返回一个数组控件
  List<Widget> _buildTitles(int length) {
    // 返回一个元素数量是 length 的数组
    // 匿名函数作为参数
    return List.generate(29, (int index) {
      return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(10),
        color: Colors.blue[200],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              'zhoubin',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Text(
              'black',
              style: TextStyle(color: Colors.pink),
            ),
          ],
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // 默认 上下滚动 主轴方向：竖直方向  如果手动更改了滚动方向，那么主轴方向页会更改
    return GridView.count(
      //
      crossAxisCount: 3,
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
      children: _buildTitles(45),
    );
  }
}

/**
 * GridView.extent 网格视图
 */
class GrideViewExtentDemo extends StatelessWidget {
// 自定义方法  返回一个数组控件
  List<Widget> _buildTitles(int length) {
    // 返回一个元素数量是 length 的数组
    // 匿名函数作为参数
    return List.generate(29, (int index) {
      return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(10),
        color: Colors.blue[200],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              'zhoubin',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Text(
              'black',
              style: TextStyle(color: Colors.pink),
            ),
          ],
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // 默认 上下滚动 主轴方向：竖直方向  如果手动更改了滚动方向，那么主轴方向页会更改
    return GridView.extent(
      // item 在交叉轴上的最大尺寸
      maxCrossAxisExtent: 121,
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
      children: _buildTitles(45),
    );
  }
}

/**
 * 用 GridView.count  GridView.extent 生成的视图 里面的项目数量是固定的
 * 正常情况下都是可变的   这就需要用到了 GridView.build()
 */
class GridViewBuildDemo extends StatelessWidget {

// 自定义方法  创建item
  Widget _buildItemFunc(BuildContext context, int index){
    return Container(
      child: Image.network(posts[index].imageUrl,fit: BoxFit.fill,),
    );
  }

  @override
    Widget build(BuildContext context) {
      // 
      return GridView.builder(
        itemCount: posts.length,
        itemBuilder: _buildItemFunc,
        padding: EdgeInsets.all(10),
      
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      );
    }
}