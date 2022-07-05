import 'package:flutter_study/utils/title_utils.dart';
import 'package:flutter/material.dart';
import '../../comm/page/CodePreview.dart';
import 'LearnMaterialPageRouteNoParameters.dart';
import 'LearnMaterialPageRouteWithParameters.dart';

class LearnMaterialPageRoute extends StatefulWidget {
  const LearnMaterialPageRoute({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _LearnMaterialPageRoute();
  }
}

class _LearnMaterialPageRoute extends State<LearnMaterialPageRoute> {
  TextStyle textStyle = const TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  TextEditingController textEditingController=TextEditingController(text: "我是默认值");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommTitle.setMaterialAppBar(context, "MaterialPageRoute",Callback(codeOnTap: (){
        CodePreview.go(context, "MaterialPageRoute", "lib/widgets/material/LearnMaterialPageRoute.dart");
      })),
      body: ListView.builder(
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            switch (index) {
              case 0:
                return Container(
                  margin: const EdgeInsets.only(left: 10,right: 10,top: 30,bottom: 30),
                  child: TextField(
                    controller: textEditingController,
                    textAlign: TextAlign.center,  //设置文字的对齐方式
                    keyboardType: TextInputType.text, //设置输入的数据类型
                    autofocus: true, //设置自动获取焦点
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "随便输入要传递的内容", //设置提示内容
                      contentPadding:EdgeInsets.only(top: 10,bottom: 10),
                      hintStyle: TextStyle(
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
                return Container(
                  margin: const EdgeInsets.only(left: 10, right: 10,top: 10,bottom: 10),
                  child: MaterialButton(
                    color: Theme.of(context).accentColor,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                        return LearnMaterialPageRouteWithParameters(values: textEditingController.value.text);
                      }));
                    },
                    child: Text(
                      "带参数",
                      style: textStyle,
                    )),
                );
                break;
              case 2:
                return Container(
                  margin: const EdgeInsets.only(left: 10, right: 10,top: 10,bottom: 10),
                  child: MaterialButton(
                    color: Theme.of(context).accentColor,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                        return LearnMaterialPageRouteNoParameters();
                      }));
                    },
                    child: Text(
                      "不带参数",
                      style: textStyle,
                    ),
                  ),
                );
                break;
            }
            return const Text("data");
          }),
    );
  }
}
