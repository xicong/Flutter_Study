import 'package:flutter/material.dart';
import 'package:flutter_study/utils/title_utils.dart';

import '../comm/page/CodePreview.dart';
class LearnCheckBox extends StatefulWidget{
  const LearnCheckBox({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _LearnCheckBox();
  }
}
class _LearnCheckBox extends State<LearnCheckBox>{
  bool isCheck=false;
  List<bool> isChecks=[false,false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:CommTitle.setMaterialAppBar(context, "CheckBox", Callback(codeOnTap: (){
        CodePreview.go(context, "CheckBox", "lib/widgets/LearnCheckBox.dart");
      })),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Checkbox(
              value: isCheck,
              activeColor: Colors.red,
              onChanged: (bool){
                setState(() {
                  isCheck=bool!;
                });
              },
            ),
          ),
          Center(
            child: CheckboxListTile(
                value: isCheck,
                title: const Text('张晓'),
                controlAffinity: ListTileControlAffinity.platform,//控制亲和度  leading按钮显示在文字前面  trailing按钮显示在文字的后面   platform显示样式根据手机当前平台默认显示
                onChanged: (bool){
                  setState(() {
                    isCheck=bool!;
                  });
                }),
          ),
          Center(
            child: CheckboxListTile(
                value: isCheck,
                title: Text('张晓'),
                controlAffinity: ListTileControlAffinity.platform,
                onChanged: (bool){
                  setState(() {
                    isCheck=bool!;
                  });
                }),
          ),
          Center(
            child: CheckboxListTile(
                value: isCheck,
                title: Text('张晓'),
                controlAffinity: ListTileControlAffinity.platform,
                onChanged: (bool){
                  setState(() {
                    isCheck=bool!;
                  });
                }),
          ),
          Center(
            child: CheckboxListTile(
                value: isCheck,
                title: Text('张晓'),
                controlAffinity: ListTileControlAffinity.platform,
                onChanged: (bool){
                  setState(() {
                    isCheck=bool!;
                  });
                }),
          ),
          Center(
            child: CheckboxListTile(
                value: isCheck,
                title: Text('张晓'),
                controlAffinity: ListTileControlAffinity.platform,
                onChanged: (bool){
                  setState(() {
                    isCheck=bool!;
                  });
                }),
          ),
          Center(
            child: CheckboxListTile(
                value: isChecks[0],
                title: Text('张晓'),
                controlAffinity: ListTileControlAffinity.platform,
                onChanged: (bool){
                  setState(() {
                    isChecks[0]=bool!;
                  });
                }),
          ),
          Center(
            child: CheckboxListTile(
                value: isChecks[1],
                title: Text('张晓'),
                controlAffinity: ListTileControlAffinity.platform,
                onChanged: (bool){
                  setState(() {
                    isChecks[1]=bool!;
                  });
                }),
          )
        ],
      )
    );
  }
}