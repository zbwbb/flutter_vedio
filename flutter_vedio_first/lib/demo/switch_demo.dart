import 'package:flutter/material.dart';

class SwitchDemo extends StatefulWidget {
  @override
  _SwitchDemoState createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<SwitchDemo> {

  // 定义全局变量 表示状态
  bool _switchItemA = false;
  bool _switchItemB = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SwitchDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SwitchListTile(
              value: _switchItemA,
              onChanged: (value){
                setState(() {
                                  _switchItemA = value;
                                });
              },
              title: Text('SwitchItem A'),
              subtitle: Text("A"),
              selected: _switchItemA,
              secondary: Icon(_switchItemA?Icons.child_friendly:Icons.chrome_reader_mode),
            ),
            SwitchListTile(
              value: _switchItemB,
              onChanged: (value){
                setState(() {
                                  _switchItemB = value;
                                });
              },
              title: Text('SwitchItem B'),
              subtitle: Text("B"),
              selected: _switchItemB,
              secondary: Icon(_switchItemB?Icons.child_friendly:Icons.chrome_reader_mode),
            ),

            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: <Widget>[
            //     Text(_switchItemA?"打开":"关闭"),
            //     SizedBox(
            //       height: 30,
            //     ),
            //     Switch(
            //       value: _switchItemA,
            //       onChanged: (value){
            //         setState(() {
            //                 _switchItemA = value;              
            //                             });
            //       },
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}