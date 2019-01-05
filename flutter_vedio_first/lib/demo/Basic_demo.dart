import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {

  @override
    Widget build(BuildContext context) {
      // 
      return ContainerDemo();
    }
}

/**正常字体 */
class NormalFontDemo extends StatelessWidget {
  // 用变量表示一个 style
  final TextStyle _textStyle = TextStyle(
    fontSize: 20,
  );
  final String _author = '杜甫';
  final String _title = '绝句';

  @override
    Widget build(BuildContext context) {
      // 
      return Text('《$_title》---$_author  两个黄鹂鸣翠柳，一行白鹭上青天。 窗含西岭千秋雪，门泊东吴万里船。',
      textAlign: TextAlign.center,
      style: _textStyle,
      // 最大行 以及 多出的部分溢出
      maxLines: 4,
      overflow: TextOverflow.ellipsis,
      );
    }
}

/**一行字体中有多种样式的字体 */
class RichTextDemo extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      // 丰富 文本
      return RichText(
        text: TextSpan(
          text: 'tiantianxiangshang',
          style: TextStyle(
            color: Colors.deepOrangeAccent,
            fontSize: 34.0,
            fontStyle: FontStyle.italic
          ),
          // 定义多样式的字体
          children: [TextSpan(
            text: '杭州',
            style: TextStyle(
              color: Colors.deepPurple,
              fontSize: 12.0,
              fontStyle: FontStyle.normal
            )
          ),
          TextSpan(
            text: '上海',
            style: TextStyle(
              color: Colors.deepPurpleAccent,
              fontSize: 24.0,
              fontStyle: FontStyle.italic
            )
          )],
        ),
      );
    }
}

/**
 * 一个便利的控件，结合了常见的 绘画，定位和大小调整。container
 */
class ContainerDemo extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      // 
      return Container(
        color: Colors.grey[100],
        // 如果不设置 child ,那么这个container的尺寸将会无穷大，反之，相反
        child: Row(
          // 横排显示，控件都在children里面
          children: <Widget>[
            Container(
              child: Icon(Icons.pool, size: 32.0, color: Colors.orange,),
              // color: Colors.pink,
              // 内边距
              padding: EdgeInsets.all(20.0),
              // 外边距
              margin: EdgeInsets.all(50.0),
              width: 90.0,
              height: 100.0,
              // 设置容器的装饰
              decoration: BoxDecoration(
                // 此处的color 与外部container中的color 冲突
                color: Colors.pink,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black,
                    width: 5.0,
                    style: BorderStyle.solid
                  ),
                  top: BorderSide(
                    color: Colors.green,
                    width: 5.0,
                    style: BorderStyle.solid
                  ),
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                ),
              ),
            ),
          ],

        ),
      );
    }
}