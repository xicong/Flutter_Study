import 'package:flutter/material.dart';

class LearnRichText extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _LearnRichText();
  }
}

class _LearnRichText extends State<LearnRichText> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('RichText'),
        leading: new GestureDetector(
          child: Icon(Icons.arrow_back_ios),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: new RichText(
        textAlign: TextAlign.start,
        text: TextSpan(text: "开始", children: <TextSpan>[
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
