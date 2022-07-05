import 'package:flutter_study/utils/title_utils.dart';
import 'package:flutter/material.dart';

import '../../comm/page/CodePreview.dart';

class LearnMaterialButton extends StatefulWidget {
  const LearnMaterialButton({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _LearnMaterialButton();
  }
}

class _LearnMaterialButton extends State<LearnMaterialButton> {
  TextStyle textStyle = const TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommTitle.setMaterialAppBar(context, "MaterialButton",
          Callback(codeOnTap: () {
        CodePreview.go(context, "MaterialButton",
            "lib/widgets/material/LearnMaterialButton.dart");
      })),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 10, right: 10,top: 20,bottom: 20),
            child: MaterialButton(
              color: Theme.of(context).accentColor,
              onPressed: () {},
              child: Text(
                "按钮0",
                style: textStyle,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 10, right: 10,top: 20,bottom: 20),
            child: FlatButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.timer,
                color: Colors.white,
              ),
              label: Text(
                "按钮1",
                style: textStyle,
              ),
              color: Theme.of(context).accentColor,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 10, right: 10,top: 20,bottom: 20),
            child: RaisedButton(
              onPressed: () {},
              color: Theme.of(context).accentColor,
              child: Text(
                "按钮2",
                style: textStyle,
              ),
            ),
          )
        ],
      ),
    );
  }
}
