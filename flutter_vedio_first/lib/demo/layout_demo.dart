import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      // 
      return new Column(
        // 主轴
        // mainAxisAlignment: MainAxisAlignment.center,
        // 
        mainAxisAlignment: MainAxisAlignment.center,
        // 交叉轴 与主轴垂直
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // sizedBox 固定尺寸的盒子
          // sizedBox 还可以作为间隔使用
          SizedBox(
            width: 80,
            height: 80,
            // 如果不嵌套在SizedBox里面，那么container的尺寸就会随子控件的尺寸改变
            child: Container(
              // 对齐方式 相对于中点来说：参数是个比例
              alignment: Alignment(0.5, 0.5),
              decoration: BoxDecoration(
                color: Colors.orange,
              ),
              child: Icon(Icons.access_time, size: 40,color: Colors.black,),
            )
          ),
          // 间距
          SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 120,
            height: 90,
            // 如果不嵌套在SizedBox里面，那么container的尺寸就会随子控件的尺寸改变
            child: Container(
              decoration: BoxDecoration(
                color: Colors.pink,
              ),
              child: Icon(Icons.accessibility_new, size: 40,color: Colors.green,),
            )
          ),
        ],
      );
    }
}


/**
 * 创建可配置的图标徽章（IconBadge）小部件
 */
class IconDataDemo extends StatelessWidget {

  final IconData icon;
  final double size;
  IconDataDemo(this.icon,{this.size:32.0});

  @override
    Widget build(BuildContext context) {
      // 
      return Container(
        child: Icon(icon, size: size, color: Colors.white,),
        width: size + 50,
        height: size + 50,
        color: Colors.green,
      );
    }

}