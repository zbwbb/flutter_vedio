import 'package:flutter/material.dart';
import 'dart:async';

class BottomSheetDemo extends StatefulWidget {
  @override
  _BottomSheetDemoState createState() => _BottomSheetDemoState();
}

class _BottomSheetDemoState extends State<BottomSheetDemo> {

  final _bottomSheetScaffoldKey = GlobalKey<ScaffoldState>();

  _openBottomSheet(){
    _bottomSheetScaffoldKey
    .currentState
    .showBottomSheet((BuildContext context){
      return BottomAppBar(
        child: Container(
          height: 90,
          width: double.infinity,
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: <Widget>[
              Icon(Icons.pause),
              SizedBox(width: 16.0,),
              Text('01:30 / 03:30'),
              Expanded(
                child: Text('Fix you - coldPlay',textAlign: TextAlign.right,),
              )
            ],
          ),
        ),
      );
    });

  }

  // 对话框形式的 底部滑动窗口

  String _option = 'nothing';

  _openModelBottomSheet() async {

    String option = await showModalBottomSheet(
      context: context,
      builder: (BuildContext context){
        // 对话框里面的内容
        return Container(
          height: 200.0,
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text('option A'),
                onTap: (){
                  Navigator.of(context).pop("A");
                },
              ),
              ListTile(
                title: Text('option B'),
                onTap: (){
                  Navigator.of(context).pop("B");
                },
              ),
              ListTile(
                title: Text('option C'),
                onTap: (){
                  Navigator.of(context).pop("C");
                },
              ),
              ListTile(
                title: Text('option D'),
                onTap: (){
                  Navigator.of(context).pop("D");
                },
              )
            ],
          ),
        );
      },
    );
    //
    setState(() {
          _option = option;
        });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 添加key 属性
      key: _bottomSheetScaffoldKey,
      appBar: AppBar(
        title: Text('BottomSheetDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('your option is $_option'),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  child: Text('open BottomSheet'),
                  onPressed: _openBottomSheet,
                ),
                // 对话框形式的地步滑动窗口
                FlatButton(
                  child: Text('open ModalBottomSheet'),
                  onPressed: _openModelBottomSheet,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}