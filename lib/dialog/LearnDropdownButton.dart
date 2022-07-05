import '../comm/page/CodePreview.dart';
import 'package:flutter/material.dart';
import '../utils/title_utils.dart';

class LearnDropdownButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LearnDropdownButton();
  }
}

class _LearnDropdownButton extends State<LearnDropdownButton> {
  List<DropdownMenuItem> getListData() {
    List<DropdownMenuItem> items = [];
    DropdownMenuItem dropdownMenuItem1 = DropdownMenuItem(
      child: Text('1'),
      value: '1',
    );
    items.add(dropdownMenuItem1);
    DropdownMenuItem dropdownMenuItem2 = DropdownMenuItem(
      child: Text('2'),
      value: '2',
    );
    items.add(dropdownMenuItem2);
    DropdownMenuItem dropdownMenuItem3 = DropdownMenuItem(
      child: Text('3'),
      value: '3',
    );
    items.add(dropdownMenuItem3);
    DropdownMenuItem dropdownMenuItem4 = DropdownMenuItem(
      child: Text('4'),
      value: '4',
    );
    items.add(dropdownMenuItem4);
    DropdownMenuItem dropdownMenuItem5 = DropdownMenuItem(
      child: Text('5'),
      value: '5',
    );
    items.add(dropdownMenuItem5);
    DropdownMenuItem dropdownMenuItem6 = DropdownMenuItem(
      child: Text('6'),
      value: '6',
    );
    items.add(dropdownMenuItem6);
    DropdownMenuItem dropdownMenuItem7 = DropdownMenuItem(
      child: Text('7'),
      value: '7',
    );
    items.add(dropdownMenuItem7);
    DropdownMenuItem dropdownMenuItem8 = DropdownMenuItem(
      child: Text('8'),
      value: '8',
    );
    items.add(dropdownMenuItem8);
    DropdownMenuItem dropdownMenuItem9 = DropdownMenuItem(
      child: Text('9'),
      value: '9',
    );
    items.add(dropdownMenuItem9);
    DropdownMenuItem dropdownMenuItem10 = DropdownMenuItem(
      child: Text('10'),
      value: '10',
    );
    items.add(dropdownMenuItem10);
    return items;
  }

  var value;

/*  _LearnDropdownButton(){
    value=getListData()[0].value;
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommTitle.setMaterialAppBar(context, "DropdownButton",
          Callback(codeOnTap: () {
        CodePreview.go(
            context, "DropdownButton", "lib/dialog/LearnDropdownButton.dart");
      })),
      body: Column(
        children: <Widget>[
//           Center(
//             child: DropdownButton(
//               items: getListData(),
//               hint: Text('下拉选择你想要的数据'),
//               //当没有默认值的时候可以设置的提示
//               value: value,
//               //下拉菜单选择完之后显示给用户的值
//               onChanged: (T) {
//                 //下拉菜单item点击之后的回调
//                 setState(() {
//                   value = T;
//                 });
//               },
//               elevation: 24,
//               //设置阴影的高度
//               style: TextStyle(
//                   //设置文本框里面文字的样式
//                   color: Colors.red),
// //              isDense: false,//减少按钮的高度。默认情况下，此按钮的高度与其菜单项的高度相同。如果isDense为true，则按钮的高度减少约一半。 这个当按钮嵌入添加的容器中时，非常有用
//               iconSize: 50.0, //设置三角标icon的大小
//             ),
//           ),
        ],
      ),
    );
  }
}
