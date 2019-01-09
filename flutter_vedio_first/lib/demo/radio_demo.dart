import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget {
  @override
  _RadioDemoState createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
// 单选按钮的组状态
  int _radioGroupA = 0;

  void _handleRadioValueChanged(int value){
    setState(() {
      // 改变单选按钮的群组值
          _radioGroupA = value;
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RadioDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //
            Text('_radioGroupA:$_radioGroupA'),
            SizedBox(
              height: 30,
            ),

            // RadioListTile 创建一个单选按钮 与 列表切片的组合
            RadioListTile(
              // 如果选中第一个按钮 那么_radioGroup 的值就是 0
              value: 0,
              groupValue: _radioGroupA,
              onChanged: _handleRadioValueChanged,
              title: Text('男'),
              // 用组的状态去定义
              selected: _radioGroupA == 0,
              secondary: Icon(Icons.child_friendly),
              activeColor: Colors.red,
            ),
            RadioListTile(
              // 如果选中这个按钮 那么_radioGroup 的值就是 1
              value: 1,
              groupValue: _radioGroupA,
              onChanged: _handleRadioValueChanged,
              title: Text('女'),
              selected: _radioGroupA == 1,
              secondary: Icon(Icons.child_friendly),
              activeColor: Colors.red,
            ),
            //
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Radio(
                //   // 初始值
                //   value: 0,
                //   // groupValue :表示：在一组单选按钮中  一组的状态 
                //   groupValue: _radioGroupA,
                //   onChanged: _handleRadioValueChanged,
                // ),
                // Radio(
                //   value: 1,
                //   groupValue: _radioGroupA,
                //   onChanged: _handleRadioValueChanged,
                // )
              ],
            )
          ],
        ),
      ),

    );
  }
}