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
  Widget _listItemBuilder(BuildContext context, int index){
    return new Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      // container 里面的内容交给child
      child: new Column(
        children: <Widget>[
          Image.network(posts[index].imageUrl),
          // 下面流出一部分空间
          SizedBox(height: 20.0,),
          // 设置文字样式和标题一样
          Text(posts[index].title,
          style: Theme.of(context).textTheme.title,),
          SizedBox(height: 5.0,),
          Text(posts[index].author,
          style: Theme.of(context).textTheme.subhead,),
          SizedBox(height: 5.0,),
        ],
      ),
    );
  }
  
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return ListView.builder(
            // item的数目
            itemCount: posts.length,
            // 创建item 
            itemBuilder: _listItemBuilder,
          );
    }
}