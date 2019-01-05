import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          // DrawerHeader(
          //   child: Text('header'.toUpperCase()),
          //   decoration: BoxDecoration(
          //     color: Colors.grey[100],
          //   ),
          // ),

          // 如果要是设置用户账户信息，可以使用下面的控件
          UserAccountsDrawerHeader(
            accountName: Text(
              '周彬',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            accountEmail: Text('1066283497@qq.com'),
            // 原型图像
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://upload.jianshu.io/users/upload_avatars/2530231/992028d36960?imageMogr2/auto-orient/strip|imageView2/1/w/240/h/240"),
            ),
            decoration: BoxDecoration(
                color: Colors.orange,
                image: DecorationImage(
                  image: NetworkImage(
                      'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=634838022,143039010&fm=200&gp=0.jpg'),
                  fit: BoxFit.cover, // 填充样式
                  // 颜色滤镜
                  colorFilter: ColorFilter.mode(
                      Colors.blue.withOpacity(0.5), BlendMode.lighten),
                )),
          ),

          ListTile(
            title: Text(
              'Messages',
              textAlign: TextAlign.right,
            ),
            // 在标题的左边或者右边设置图片
            trailing: Icon(
              Icons.message,
              color: Colors.black12,
              size: 20.0,
            ),
            // 点击按钮返回
            onTap: () {
              return Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(
              'Messages',
              textAlign: TextAlign.right,
            ),
            // 在标题的左边或者右边设置图片
            trailing: Icon(
              Icons.message,
              color: Colors.black12,
              size: 20.0,
            ),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text(
              'Messages',
              textAlign: TextAlign.right,
            ),
            // 在标题的左边或者右边设置图片
            trailing: Icon(
              Icons.message,
              color: Colors.black12,
              size: 20.0,
            ),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text(
              'Messages',
              textAlign: TextAlign.right,
            ),
            // 在标题的左边或者右边设置图片
            trailing: Icon(
              Icons.message,
              color: Colors.black12,
              size: 20.0,
            ),
            onTap: () => Navigator.pop(context),
          )
        ],
      ),
    );
  }
}
