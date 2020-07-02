import 'package:flutter/material.dart';
import '../comm/CommTitle.dart';
class LearnTextField extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new _LearnTextField();
  }
}
class _LearnTextField extends State<StatefulWidget>{
  TextEditingController textEditingController=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: CommTitle.setMaterialAppBar(context, "TextField",null),
        body: new Column(
          children: <Widget>[
            new Container(
              child:new Text('学习TextField',
                style: new TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 30.0,
                  color: Colors.black,
                ),
              ),
              margin: EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 30.0),
            ),
            new Container(
              margin: EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 20.0),
              child:new Material(
                shape: new OutlineInputBorder(
                    borderRadius:new BorderRadius.all(new Radius.circular(20.0)),
                    borderSide: new BorderSide(
                      style:BorderStyle.solid ,
                      color: Colors.blue,
                      width: 5.0,
                    )
                ),
                child: new TextField(
                ),
              ),
            ),
            new Material(
//              shape: new StadiumBorder(
//                side: new BorderSide(
//                  color: Colors.blue,
//                  width: 5.0,
//                ),
//              ),
              child: new TextField(//文本输入控件
                onChanged: (String str){//输入监听
                  print('用户输入变更');
                },
                onSubmitted:(String str){//提交监听
                  print('用户提交变更');
                },
                keyboardType: TextInputType.number,//设置输入框文本类型
                controller: textEditingController,//控制器，控制文字内容
                textAlign: TextAlign.left,//设置内容显示位置是否居中等
                style: new TextStyle(
                  fontSize: 20.0,
                  color: Colors.blueAccent,
                ),
                autofocus: true,//自动获取焦点
                decoration: new InputDecoration(
//                labelText: '这里输入labelText',
//                helperText: '这里是helperText',
//                icon: new Container(
//                  padding: EdgeInsets.all(0.0),
//                  child: new Icon(Icons.phone),
//                ),
//                errorText: '这是错误的errorText',
                  contentPadding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),//设置显示文本的一个内边距
//                border: InputBorder.none,//取消默认的下划线边框
//                  border: UnderlineInputBorder(),//显示下划线边框
                  border: OutlineInputBorder(),//四边带边的边框
                ),
              ),
            ),
            new Container(
              margin:EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
              padding: EdgeInsets.all(15.0),
              decoration: new BoxDecoration(
                color: Colors.blueAccent,
                borderRadius:BorderRadius.all(Radius.circular(10.0)),
              ),
              child: new Builder(
                builder: (BuildContext context){
                  return new GestureDetector(
                    child:new Text('点击获取内容',
                      style: new TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onTap: (){
                      Scaffold.of(context).showSnackBar(new SnackBar(content:new Text(textEditingController.text.toString())));
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