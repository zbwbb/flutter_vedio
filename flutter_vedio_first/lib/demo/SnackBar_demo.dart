import 'package:flutter/material.dart';

class SnackBarDemo extends StatefulWidget {
  @override
  _SnackBarDemoState createState() => _SnackBarDemoState();
}

class _SnackBarDemoState extends State<SnackBarDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBarDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[SnackBarButton()],
            ),
          ],
        ),
      ),
    );
  }
}

// 自定义
class SnackBarButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text('open SnackBar'),
      onPressed: () {
        // 调起  
        Scaffold.of(context).showSnackBar(SnackBar(
          content: Text('processing...'),
          action: SnackBarAction(
            label: 'ok',
            onPressed: () {},
          ),
        ));
      },
    );
  }
}
