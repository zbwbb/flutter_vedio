import 'package:flutter/material.dart';

class ChipDemo extends StatefulWidget {
  @override
  _ChipDemoState createState() => _ChipDemoState();
}

class _ChipDemoState extends State<ChipDemo> {

//
List<String> _tags = [
  "apple",
  'brana',
  'lemon'
];
// action
String _action = 'nothing';
// filter
List<String>_selected = [];
// choice
String _choice = 'nothing';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ChipDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.center,
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
                  // 必须添加删除方法  才能显示删除图片
                  onDeleted: (){},
                ),
                Chip(
                  label: Text('menu 3'),
                  labelStyle: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.orange),
                  avatar: Icon(Icons.access_alarm),
                ),
                // 添加一个分隔符
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

                //
                Divider(
                  height: 2,
                ),
                // 基于列表数据 生成切片
                Wrap(
                  spacing: 10.0,
                  children: _tags.map((tag){
                    // 每次取出一个 tag 值
                    return Chip(
                      label: Text(tag),
                      deleteButtonTooltipMessage: tag,
                      deleteIcon: Icon(Icons.delete_forever),
                      onDeleted: (){
                        // 当点击图标 可以删除当前的图标
                        setState(() {
                          // 从、当前的数组中删除数据
                          _tags.remove(tag);
                        });
                      },
                    );
                  }).toList(),
                ),

                //
                //
                Divider(
                  height: 2,
                ),
                Container(
                  // 宽度占满横屏
                  width: double.infinity,
                  height: 50,
                  color: Colors.black,
                  child:Text('actionchip is :$_action',style: TextStyle(color: Colors.white),),
                ),
                // 动作切片 类似按钮
                // 基于列表数据 生成动作切片
                Wrap(
                  spacing: 10.0,
                  children: _tags.map((tag){
                    // 每次取出一个 tag 值 
                    return ActionChip(
                      label: Text(tag),
                      onPressed: (){
                        // 改变状态
                        setState(() {
                          _action = tag;
                        });
                      },
                    );
                  }).toList(),
                ),
                //
                //
                Divider(
                  height: 2,
                ),
                Container(
                  // 宽度占满横屏
                  width: double.infinity,
                  height: 50,
                  color: Colors.black,
                  child:Text('filterchip is :$_selected.tostring()',style: TextStyle(color: Colors.white),),
                ),
                // 过滤切片 类似复选框 开关按钮  每个小部件都有两种不同的状态
                // 基于列表数据 生成过滤切片
                Wrap(
                  spacing: 10.0,
                  children: _tags.map((tag){
                    // 每次取出一个 tag 值 
                    return FilterChip(
                      label: Text(tag),
                      // 是否选中状态
                      selected: _selected.contains(tag),
                      onSelected: (value){
                        // 
                        setState(() {
                          if (_selected.contains(tag)){
                            // 删除的同时，上述的选中状态也会改变
                            _selected.remove(tag);
                          }else{
                            // 添加到列表，同时上述的选中状态也会改变
                            _selected.add(tag);
                          }
                        });

                      },
                    );
                  }).toList(),
                ),

                //
                Divider(
                  height: 2,
                ),
                Container(
                  // 宽度占满横屏
                  width: double.infinity,
                  height: 50,
                  color: Colors.black,
                  child:Text('choicechip is :$_choice',style: TextStyle(color: Colors.white),),
                ),
                // 选择切片 一组中只能选择一个 选中当前，之前取消
                // 基于列表数据 生成过滤切片
                Wrap(
                  spacing: 10.0,
                  children: _tags.map((tag){
                    // 每次取出一个 tag 值 
                    return ChoiceChip(
                      label: Text(tag),
                      // 是否选中状态
                      selected: _choice == tag,
                      onSelected: (value){
                        // 
                        setState(() {
                          _choice = tag;
                        });

                      },
                    );
                  }).toList(),
                ),
              ],
            ),
          ],
        ),
      ),
      // 通过按钮可以重置数据
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restore),
        onPressed: (){
          setState(() {
            _tags = [
              'zhou',
              'bin',
              'wang',
              'dong'
            ];
            _selected = [];
          });
        },
      ),
    );
  }
}