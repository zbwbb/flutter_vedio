import 'package:flutter/material.dart';
import 'package:flutter_vedio_first/model/post.dart';

class PaginatedDataTableDemo extends StatefulWidget {
  @override
  _PaginatedDataTableDemoState createState() => _PaginatedDataTableDemoState();
}

class _PaginatedDataTableDemoState extends State<PaginatedDataTableDemo> {
  
  bool _sortAscending = true;
  int _sortColumnIndex = 0;

  // 创建数据源
  final PostDataSource _postsDataSource = PostDataSource();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PaginatedDataTableDemo'),
        elevation: 0.0,
      ),
      body: Container(
        // padding: EdgeInsets.all(8.0),
        // 数据表格
        child: ListView(
          children: <Widget>[
            PaginatedDataTable(
              // 设置头部
              header: Text('posts'),
              // 设置数据
              source: _postsDataSource,
              // 每页显示的行数
              rowsPerPage: 5,

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
                              // 交换位置
                              final c = a;
                              a = b;
                              b = c;
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
            )
          ],
        ),
      ),
    );
  }
}


// 定义表示表格数据源的类
class PostDataSource extends DataTableSource{

  // 定义行数
  final List<Post> _posts = posts;
  // 定义选中的行数
  int _selectedCount = 0;

  @override
    // 行数
    int get rowCount => _posts.length;

  @override
    // 确定行的个数 false  不确定行的个数:true
    bool get isRowCountApproximate => false;

  @override
    // 选中的行数
    int get selectedRowCount => _selectedCount;

  // 返回每行的内容
  @override
    DataRow getRow(int index) {
      //
      final Post post = _posts[index];
      // 
      return DataRow.byIndex(
        index: index,
        cells: <DataCell>[
          DataCell(Text(post.title)),
          DataCell(Text(post.author)),
          DataCell(Image.network(post.imageUrl)),
        ]
      );
    }
  
}