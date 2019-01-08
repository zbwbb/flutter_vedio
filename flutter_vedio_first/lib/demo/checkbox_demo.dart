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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // 复选框
                Checkbox(
                  value: _checkboxItemA,
                  activeColor: Colors.black,
                  onChanged: (istrue) {
                    // 有状态的部件 改变状态
                    setState(() {
                      _checkboxItemA = istrue;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
