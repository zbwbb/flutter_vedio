import 'package:flutter/material.dart';

class ChipDemo extends StatefulWidget {
  @override
  _ChipDemoState createState() => _ChipDemoState();
}

class _ChipDemoState extends State<ChipDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ChipDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // 如果当一行显示不完的时候，可以使用 wrap 会自动换行
            Wrap(
              // mainAxisAlignment: MainAxisAlignment.center,
              spacing: 10.0,
              runSpacing: 20.0,
              children: <Widget>[
                // 碎片
                Chip(
                  label: Text('menu 0'),
                  labelStyle: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.orange),
                  avatar: CircleAvatar(
                    child: Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1547821776&di=af7f9d3cf9aa0c06f6525dc160abd8f0&imgtype=jpg&er=1&src=http%3A%2F%2Fpic.rmb.bdstatic.com%2F0e32ffa420eac23ff059d5eda881ca75.jpeg'),
                  ),
                  deleteIcon: Icon(Icons.access_time),
                ),
                Chip(
                  label: Text('menu 1'),
                ),
                Chip(
                  label: Text('menu 2'),
                  labelStyle: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.orange),
                  avatar: Icon(Icons.access_alarm),
                  deleteIcon: Icon(Icons.access_time),
                ),
                Chip(
                  label: Text('menu 3'),
                  labelStyle: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.orange),
                  avatar: Icon(Icons.access_alarm),
                  deleteIcon: Icon(Icons.access_time),
                ),
                // 添加一个分隔符
                Divider(
                  color: Colors.orange,
                ),
                Chip(
                  label: Text('menu 4'),
                  labelStyle: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.orange),
                  avatar: Icon(Icons.access_alarm),
                  deleteIcon: Icon(Icons.access_time),
                ),
                Divider(
                  color: Colors.orange,
                ),
                // 带 删除功能的碎片
                Chip(
                  label: Text('city'),
                  deleteIcon: Icon(Icons.delete),
                  // 只有声明下面的语句 才会显示删除图标
                  onDeleted: (){},
                  deleteIconColor: Colors.blue,
                  deleteButtonTooltipMessage: '删除',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}