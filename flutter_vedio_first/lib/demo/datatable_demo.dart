import 'package:flutter/material.dart';
import 'package:flutter_vedio_first/model/post.dart';


class DataTableDemo extends StatefulWidget {
  @override
  _DataTableDemoState createState() => _DataTableDemoState();
}

class _DataTableDemoState extends State<DataTableDemo> {


  bool _sortAscending = true;
  int _sortColumnIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DataTableDemo'),
        elevation: 0.0,
      ),
      body: Container(
        // padding: EdgeInsets.all(8.0),
        // 数据表格
        child: ListView(
          children: <Widget>[
            DataTable(
              // 给数据表格排序 排序的参数应该是动态设置的
              sortColumnIndex: _sortColumnIndex,
              sortAscending: _sortAscending,
              //
              onSelectAll: (bool value){

              },

              columns: [
                DataColumn(
                  // 这里 将 label 设置为container 可以修改每一列的宽度
                  // label:Container(
                  //   width: 30,
                  //   height: 50,
                  //   child: Text('author'),
                  // )
                  label: Text('author'),
                  // 当点击列表标签的时候 触发方法
                  onSort: (int index, bool ascending){
                      setState(() {
                        _sortAscending = ascending;
                        _sortColumnIndex = index;
                        // 处理数组
                        posts.sort(
                          (a,b){
                            if (!ascending) {
                              // final c = a;
                              // a = b;
                              // b = c;
                            }
                            // 通过长度进行比较
                            return a.author.length.compareTo(b.author.length);
                          }
                        );
                      });
                  } 
                ),
                DataColumn(
                  label: Text('title'),
                  // 当点击列表标签的时候 触发方法
                  onSort: (int index, bool boolvalue){
                      setState(() {
                        _sortAscending = boolvalue;
                        _sortColumnIndex = index;
                      });
                  } 
                ),
                DataColumn(
                  label: Text('image'),
                  // 当点击列表标签的时候 触发方法
                  onSort: (int index, bool boolvalue){
                      setState(() {
                        _sortAscending = boolvalue;
                        _sortColumnIndex = index;
                      });
                  } 
                )
              ],
              // 用列表生成数据表格
              rows: posts.map(
                (post){
                  return DataRow(
                    cells: [
                      // cells 中得每个部件都是 DataCell
                      // cells 中得部件的个数与列的个数对应
                      DataCell(
                        Text(post.author),
                      ),
                      DataCell(
                        Text(post.title),
                      ),
                      DataCell(
                        Image.network(post.imageUrl),
                      ),
                      
                    ]
                  );
                }
              ).toList(),
            )
          ],
        ),
      ),
    );
  }
}
