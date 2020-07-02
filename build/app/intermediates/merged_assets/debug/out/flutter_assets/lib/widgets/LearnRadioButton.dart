import 'package:flutter/material.dart';
import '../comm/CommTitle.dart';
class LearnRadioButton extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new _LearnRadioButton();
  }
}
class _LearnRadioButton extends State<LearnRadioButton>{

  int groupValue=1;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: CommTitle.setMaterialAppBar(context, "RadioButton",null),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Radio(value: 0, groupValue: 0, onChanged: null),//onChanged为null表示按钮不可用
          new Radio(
              value: 1,
              groupValue: groupValue,//当value和groupValue一致的时候则选中
              activeColor: Colors.red,
              onChanged: (T){
                updateGroupValue(T);
              }
          ),
          new Radio(
              value: 2,
              groupValue: groupValue,
              onChanged: (T){
                updateGroupValue(T);
              }
          ),
          new Radio(
              value: 3,
              groupValue: groupValue,
              onChanged: (T){
                updateGroupValue(T);
              }
          ),
          new Radio(
              value: 4,
              groupValue: groupValue,
              onChanged: (T){
                updateGroupValue(T);
              }
          ),
          new Radio(
              value: 5,
              groupValue: groupValue,
              onChanged: (T){
                updateGroupValue(T);
              }
          ),
          new Radio(
              value: 6,
              groupValue: groupValue,
              onChanged: (T){
                updateGroupValue(T);
              }
          ),
          new RadioListTile(
              value: 7,
              groupValue: groupValue,
              title: new Text('小张'),
              onChanged: (T){
                updateGroupValue(T);
              }),
          new RadioListTile(
              value: 8,
              groupValue: groupValue,
              title: new Text('小林'),
              onChanged: (T){
                updateGroupValue(T);
              }),
          new RadioListTile(
              value: 9,
              groupValue: groupValue,
              title: new Text('小王'),
              onChanged: (T){
                updateGroupValue(T);
              }),
          new RadioListTile(
              value: 10,
              groupValue: groupValue,
              title: new Text('小红'),
              onChanged: (T){
                updateGroupValue(T);
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