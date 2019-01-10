import 'package:flutter/material.dart';

class SliderDemo extends StatefulWidget {
  @override
  _SliderDemoState createState() => _SliderDemoState();
}

class _SliderDemoState extends State<SliderDemo> {

  // 接收滑动的进度
  double _currentSliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SliderDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Text('当前进度是 : $_currentSliderValue'),
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // 滑块
                Slider(
                  value: _currentSliderValue,
                  // 滑动的过程中要改变 value
                  onChanged: (value){
                    // 改变有状态的控件 
                    setState(() {
                      _currentSliderValue = value;
                    });
                    
                  },
                  min: 0.0,
                  max: 10.0,
                  onChangeStart: (value){
                    print('滑动开始');
                  },
                  onChangeEnd: (value){
                    print('滑动结束');
                  },
                  inactiveColor: Colors.grey,
                  activeColor: Theme.of(context).primaryColor.withOpacity(0.3),

                  // 拖动标签 可以显示 文本 以下两个参数要同时使用
                  label: 'Slider',
                  divisions: 10,

                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}