import 'package:flutter/material.dart';
import '../comm/page/CodePreview.dart';
import '../utils/title_utils.dart';
class LearnTextField extends StatefulWidget{
  const LearnTextField({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _LearnTextField();
  }
}
class _LearnTextField extends State<StatefulWidget>{
  TextEditingController textEditingController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: CommTitle.setMaterialAppBar(context, "TextField",Callback(codeOnTap: (){
          CodePreview.go(context, "TextField", "lib/widgets/LearnTextField.dart");
        })),
        body: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 30.0),
              child:const Text('学习TextField',
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 30.0,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 20.0),
              child:const Material(
                shape: OutlineInputBorder(
                    borderRadius:BorderRadius.all(Radius.circular(20.0)),
                    borderSide: BorderSide(
                      style:BorderStyle.solid ,
                      color: Colors.blue,
                      width: 5.0,
                    )
                ),
                child: TextField(
                ),
              ),
            ),
            Material(
//              shape: StadiumBorder(
//                side: BorderSide(
//                  color: Colors.blue,
//                  width: 5.0,
//                ),
//              ),
              child: TextField(//文本输入控件
                onChanged: (String str){//输入监听
                  print('用户输入变更');
                },
                onSubmitted:(String str){//提交监听
                  print('用户提交变更');
                },
                keyboardType: TextInputType.number,//设置输入框文本类型
                controller: textEditingController,//控制器，控制文字内容
                textAlign: TextAlign.left,//设置内容显示位置是否居中等
                style: const TextStyle(
                  fontSize: 20.0,
                  color: Colors.blueAccent,
                ),
                autofocus: true,//自动获取焦点
                decoration: const InputDecoration(
//                labelText: '这里输入labelText',
//                helperText: '这里是helperText',
//                icon: Container(
//                  padding: EdgeInsets.all(0.0),
//                  child: Icon(Icons.phone),
//                ),
//                errorText: '这是错误的errorText',
                  contentPadding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),//设置显示文本的一个内边距
//                border: InputBorder.none,//取消默认的下划线边框
//                  border: UnderlineInputBorder(),//显示下划线边框
                  border: OutlineInputBorder(),//四边带边的边框
                ),
              ),
            ),
            Container(
              margin:const EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
              padding: const EdgeInsets.all(15.0),
              decoration: const BoxDecoration(
                color: Colors.blueAccent,
                borderRadius:BorderRadius.all(Radius.circular(10.0)),
              ),
              child: Builder(
                builder: (BuildContext context){
                  return GestureDetector(
                    child:const Text('点击获取内容',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onTap: (){
                      Scaffold.of(context).showSnackBar(SnackBar(content:Text(textEditingController.text.toString())));
                    },
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}