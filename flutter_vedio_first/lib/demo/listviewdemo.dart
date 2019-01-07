import 'package:flutter/material.dart';
// 当前文件的上一级
// import '../model/post.dart';
import 'package:flutter_vedio_first/model/post.dart';

/**
 * 自定义一个tableview
 */
class ListViewDemo extends StatelessWidget {
  // 创建item的方法
  // index 是创建时候的item的索引
  Widget _listItemBuilder(BuildContext context, int index) {
    return new Container(
        color: Colors.white,
        margin: EdgeInsets.all(8.0),
        // container 里面的内容交给child
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                // 添加图片比例
                AspectRatio(
                  aspectRatio: 4/3,
                  child: Image.network(posts[index].imageUrl,fit: BoxFit.cover,),

                ),
                // 下面流出一部分空间
                SizedBox(
                  height: 20.0,
                ),
                // 设置文字样式和标题一样
                Text(
                  posts[index].title,
                  style: Theme.of(context).textTheme.title,
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  posts[index].author,
                  style: Theme.of(context).textTheme.subhead,
                ),
                SizedBox(
                  height: 5.0,
                ),
              ],
            ),
            // Positioned.fill 如果不设置上下左右的位置，那么都默认为0
            Positioned.fill(
              child: Material(
                // 设置透明颜色
                color: Colors.transparent,
                // 溅墨效果
                child: InkWell(
                  splashColor: Colors.white.withOpacity(0.3),
                  highlightColor: Colors.white.withOpacity(0.1),
                  onTap: (){
                    debugPrint('zhoubin');
                  },
                ),
              ),
            ),
          ],
        )
        );
  }

  @override
  Widget build(BuildContext context) {
    //
    return ListView.builder(
      // item的数目
      itemCount: posts.length,
      // 创建item
      itemBuilder: _listItemBuilder,
    );
  }
}
