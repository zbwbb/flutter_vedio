import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      // 
      return new Column(
        
        children: <Widget>[
          IconDataDemo(Icons.pool),
          IconDataDemo(Icons.portable_wifi_off),
          IconDataDemo(Icons.power)
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
        width: size + 90,
        height: size + 70,
        color: Colors.green,
      );
    }

}