import 'package:Flutter_Study/utils/title_utils.dart';
import 'package:flutter/material.dart';
import 'LearnMaterialPageRouteNoParameters.dart';
import 'LearnMaterialPageRouteWithParameters.dart';

class LearnMaterialPageRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _LearnMaterialPageRoute();
  }
}

class _LearnMaterialPageRoute extends State<LearnMaterialPageRoute> {
  TextStyle textStyle = new TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  TextEditingController textEditingController=new TextEditingController(text: "我是默认值");

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: CommTitle.setMaterialAppBar(context, "MaterialPageRoute",null),
      body: new ListView.builder(
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            switch (index) {
              case 0:
                return new Container(
                  margin: EdgeInsets.only(left: 10,right: 10,top: 30,bottom: 30),
                  child: new TextField(
                    controller: textEditingController,
                    textAlign: TextAlign.center,  //设置文字的对齐方式
                    keyboardType: TextInputType.text, //设置输入的数据类型
                    autofocus: true, //设置自动获取焦点
                    style: new TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                    decoration: new InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "随便输入要传递的内容", //设置提示内容
                      contentPadding:EdgeInsets.only(top: 10,bottom: 10),
                      hintStyle: new TextStyle(
                        fontSize: 15,
                      ),
//                      icon: Icon(Icons.edit,color: Colors.black,)
                    ),
                    onChanged: (str){

                    },
                    onSubmitted: (str){

                    },

                  ),
                );
                break;
              case 1:
                return new Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: new MaterialButton(
                    child: new Text(
                      "带参数",
                      style: textStyle,
                    ),
                    color: Theme.of(context).accentColor,
                    onPressed: () {
                      Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context){
                        return new LearnMaterialPageRouteWithParameters(textEditingController.value.text);
                      }));
                    },
                  ),
                );
                break;
              case 2:
                return new Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: new MaterialButton(
                    child: new Text(
                      "不带参数",
                      style: textStyle,
                    ),
                    color: Theme.of(context).accentColor,
                    onPressed: () {
                      Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context){
                        return new LearnMaterialPageRouteNoParameters();
                      }));
                    },
                  ),
                );
                break;
            }
            return null;
          }),
    );
  }
}
