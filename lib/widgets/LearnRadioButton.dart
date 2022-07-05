import 'package:flutter/material.dart';
import '../comm/page/CodePreview.dart';
import '../utils/title_utils.dart';
class LearnRadioButton extends StatefulWidget{
  const LearnRadioButton({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _LearnRadioButton();
  }
}
class _LearnRadioButton extends State<LearnRadioButton>{
  int groupValue=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommTitle.setMaterialAppBar(context, "RadioButton",Callback(codeOnTap: (){
        CodePreview.go(context, "RadioButton", "lib/widgets/LearnRadioButton.dart");
      })),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Radio(value: 0, groupValue: 0, onChanged: null),//onChanged为null表示按钮不可用
          Radio(
              value: 1,
              groupValue: groupValue,//当value和groupValue一致的时候则选中
              activeColor: Colors.red,
              onChanged: (T){
                // updateGroupValue(T);
              }
          ),
          Radio(
              value: 2,
              groupValue: groupValue,
              onChanged: (T){
                // updateGroupValue(T);
              }
          ),
          Radio(
              value: 3,
              groupValue: groupValue,
              onChanged: (T){
                // updateGroupValue(T);
              }
          ),
          Radio(
              value: 4,
              groupValue: groupValue,
              onChanged: (T){
                // updateGroupValue(T);
              }
          ),
          Radio(
              value: 5,
              groupValue: groupValue,
              onChanged: (T){
                // updateGroupValue(T);
              }
          ),
          Radio(
              value: 6,
              groupValue: groupValue,
              onChanged: (T){
                // updateGroupValue(T);
              }
          ),
          RadioListTile(
              value: 7,
              groupValue: groupValue,
              title: const Text('小张'),
              onChanged: (T){
                // updateGroupValue(T);
              }),
          RadioListTile(
              value: 8,
              groupValue: groupValue,
              title: const Text('小林'),
              onChanged: (T){
                // updateGroupValue(T);
              }),
          RadioListTile(
              value: 9,
              groupValue: groupValue,
              title: const Text('小王'),
              onChanged: (T){
                // updateGroupValue(T);
              }),
          RadioListTile(
              value: 10,
              groupValue: groupValue,
              title: const Text('小红'),
              onChanged: (T){
                // updateGroupValue(T);
              })
        ],
      ),
    );
  }

  void updateGroupValue(int v){
    setState(() {
      groupValue=v;
    });
  }

}