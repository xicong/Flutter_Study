import 'package:flutter_study/utils/title_utils.dart';
import 'package:flutter/material.dart';

import '../../comm/page/CodePreview.dart';
class LearnMaterialColor extends StatefulWidget{
  const LearnMaterialColor({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _LearnMaterialColor();
  }
}
class _LearnMaterialColor extends State<LearnMaterialColor>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommTitle.setMaterialAppBar(context, "MaterialColor",Callback(codeOnTap: (){
        CodePreview.go(context, "MaterialColor", "lib/widgets/material/LearnMaterialColor.dart");
      })),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index){
            Color bgColor=Colors.blue;
            switch(index){
              case 0:
                bgColor=Colors.grey;
                break;
              case 1:
                bgColor=Colors.red;
                break;
              case 2:
                bgColor=Colors.green;
                break;
              case 3:
                bgColor=Colors.black;
                break;
              case 4:
                bgColor=Colors.yellow;
                break;
            }
            return Container(
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              padding: const EdgeInsets.only(top: 20,bottom: 20),
              margin: const EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
              alignment: Alignment.center,
              child: Text('$index',
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),),
            );
          }
      ),
    );
  }
}