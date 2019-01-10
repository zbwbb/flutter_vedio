import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:async';



class DateTimeDemo extends StatefulWidget {
  @override
  _DateTimeDemoState createState() => _DateTimeDemoState();
}

class _DateTimeDemoState extends State<DateTimeDemo> {

  // 获取当前日期 和 时间
   DateTime _selectedDate = DateTime.now();
   TimeOfDay _selectedTime = TimeOfDay(hour: 12,minute: 25,);

  // 选取日期的方法
  // 标记方法为异步
  Future _selectDate()async{
    // 弹出日期选择器
    // 定义变量接收返回值
    // 使用 await ：等待结果返回 再赋值
    final DateTime date = await showDatePicker(
      initialDate: _selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2030),
      context: context,

    );
    if (date == null) {
      return;
    }
    // 把返回的结果赋值给当前的日期
    setState(() {
          _selectedDate = date;
        });
  }


  // 选取时间的方法
  // 标记方法为异步
  _selectTime()async{
    final TimeOfDay time = await showTimePicker(
      initialTime: _selectedTime,
      context: context,

    );
    if (time == null) {
      return;
    }
    setState(() {
          _selectedTime = time;
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DateTimeDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // 创建一个国际化部件 日期
            InkWell(
              onTap: _selectDate,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // 日期需要格式化 DateForMat
                  Text(DateFormat.yMd().format(_selectedDate)),
                  Icon(Icons.arrow_drop_down),
                ],
              ),
            ),
            // 创建一个国际化部件 时间
            InkWell(
              onTap: _selectTime,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // 
                  Text(_selectedTime.format(context)),
                  Icon(Icons.arrow_drop_down),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}