import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('formdemo'),
      ),
      // 可以在应用中的某一部分 定制一个特定的主题 这种写法会覆盖之前的主题
      // body: Theme(
      //   data: ThemeData(
      //     primaryColor: Colors.red
      //   ),
      //   child: ThemeDemo(),
      // ),

      // 下面的写法：不会会覆盖之前的主题
      body: Theme(
        data: Theme.of(context).copyWith(
          primaryColor: Colors.teal
        ),
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ResigterForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class ThemeDemo extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      // 
      return Container(
        color: Theme.of(context).primaryColor,
      );
    }
}

/**
 * 创建一个有状态的控件
 */
class TextFieldDemo extends StatefulWidget {
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {

  // 给文本添加一个控制器：1、初始化文本内容 2、监听文本内容的变化
  // 使用 TextEditingController 监听文本字段变化
  final  texteditcontroller = TextEditingController();

  // 添加初始化数据
  void initState() { 
    super.initState();
    // 文本的初始值
    texteditcontroller.text = 'nihao';
    // 添加一个监听器
    texteditcontroller.addListener(
      (){
        debugPrint('input : ${texteditcontroller.text}');
      }
    );
  }

  // 控制器用完要消除
  @override
    void dispose() {
      // 
      texteditcontroller.dispose();
      super.dispose();
    }


  @override
  Widget build(BuildContext context) {
    return Container(
       child: TextField(
         // 监听回调
        //  onChanged: (contet){
        //    debugPrint(contet);
        //  },

        // 或者 这样监听回调
        controller: texteditcontroller,

         // 按下确定按钮
         onSubmitted: (content){
           debugPrint('提交的内容：'+ content);
         },
         decoration: InputDecoration(
           icon: Icon(Icons.account_balance),
           labelText: '姓名',
           hintText: '请输入姓名',
           // 边框 去除
          //  border: InputBorder.none
         ),
       ),
    );
  }
}

/**
 * 创建一个注册界面
 */
class ResigterForm extends StatefulWidget {
  _ResigterFormState createState() => _ResigterFormState();
}

class _ResigterFormState extends State<ResigterForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // 表单 控件
       child: Form(
         child: Column(
           children: <Widget>[
             //  Creates a [FormField] that contains a [TextField].
             TextFormField(
               decoration: InputDecoration(
                 labelText: 'username',
               ),
             ),
             TextFormField(
               // 密文
               obscureText: true,
               decoration: InputDecoration(
                 labelText: 'password',
               ),
             ),
             SizedBox(
               height: 40,
             ),
             // 添加按钮
             Container(
               width: double.infinity,
               color: Colors.black,
               child: RaisedButton(
                 color: Theme.of(context).primaryColor,
                 child: Text('Register', style: TextStyle(color: Colors.white),),
                 elevation: 0.0,
                 onPressed: (){
                   debugPrint('注册');
                 },
               ),
             )

           ],
         ),
       ),
    );
  }
}