import 'package:flutter/material.dart';
import 'dart:async';


class AlertDialogDemo extends StatefulWidget {
  @override
  _AlertDialogDemoState createState() => _AlertDialogDemoState();
}

class _AlertDialogDemoState extends State<AlertDialogDemo> {

  // 接收选择的值
  String _alertValue = 'nothing';


  Future openAlertDialog() async{

    String choice = await showDialog(
      context: context,
      // 如果强制用户选择的话
      // barrierDismissible: false,
      builder: (BuildContext context){
        return AlertDialog(
          title: Text('alertdialog'),
          content: Text('you are a good dog'),
          actions: <Widget>[
            RaisedButton(
              onPressed: (){
                Navigator.of(context).pop('cancel');
              },
              child: Text('cancel',style: TextStyle(color: Colors.white),),
            ),
            RaisedButton(
              onPressed: (){
                Navigator.of(context).pop('ok');
              },
              child: Text('ok',style: TextStyle(color: Colors.pink),),
            ),
          ],
        );
      },
    );
    //
    setState(() {
        _alertValue = choice;
      });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlertDialogDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('your choice is $_alertValue'),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // 平面按钮
                FlatButton(
                  child: Text('flatbutton'),
                  onPressed: openAlertDialog,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

