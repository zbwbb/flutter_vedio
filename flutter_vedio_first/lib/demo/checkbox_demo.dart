import 'package:flutter/material.dart';

class CheckBoxDemo extends StatefulWidget {
  @override
  _CheckBoxDemoState createState() => _CheckBoxDemoState();
}

class _CheckBoxDemoState extends State<CheckBoxDemo> {
  // 定义个全局变量

  bool _checkboxItemA = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('checkboxDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // 同时创建列表切片和复选框
            CheckboxListTile(
              value: _checkboxItemA,
              onChanged: (value) {
                // 改变状态用 setstate
                setState(() {
                  _checkboxItemA = value;
                });
              },
              activeColor: Colors.green,
              title: Text(
                'This is Title',
                style: TextStyle(fontSize: 25.0,),
              ),
              subtitle: Text(
                'This is SubTitle',
                style: TextStyle(fontSize: 15.0,),
              ),
              // secondary 显示在复选框 左侧的部件 
              secondary: Icon(Icons.change_history),
              // selected 控制图标和标题是否使用选中的颜色(如果标题和图标已经设置了颜色，此行代码无用)
              selected: _checkboxItemA,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // 复选框
                // Checkbox(
                //   value: _checkboxItemA,
                //   activeColor: Colors.black,
                //   onChanged: (istrue) {
                //     // 有状态的部件 改变状态
                //     setState(() {
                //       _checkboxItemA = istrue;
                //     });
                //   },
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
