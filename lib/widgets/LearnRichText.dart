import 'package:flutter/material.dart';
import 'package:flutter_study/utils/title_utils.dart';

import '../comm/page/CodePreview.dart';

class LearnRichText extends StatefulWidget {
  const LearnRichText({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _LearnRichText();
  }
}

class _LearnRichText extends State<LearnRichText> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommTitle.setMaterialAppBar(context, "RichText", Callback(codeOnTap: (){
        CodePreview.go(context, "RichText", "lib/widgets/LearnRichText.dart");
      })),
      body: RichText(
        textAlign: TextAlign.start,
        text: const TextSpan(text: "开始", children: <TextSpan>[
          TextSpan(
              text: "TextSpan",
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontStyle: FontStyle.italic,
                color: Colors.black,
                backgroundColor: Colors.blue,
                fontSize: 30,
              )),
          TextSpan(
              text: "TextSpan",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 60,
                  backgroundColor: Colors.yellow)),
        ]),
      ),
    );
  }
}
