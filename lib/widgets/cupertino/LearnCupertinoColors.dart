import 'package:flutter/cupertino.dart';
import 'package:Flutter_Study/comm/CommTitle.dart';
import 'package:Flutter_Study/commpage/CodePreview.dart';

class LearnCupertinoColors extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _LearnCupertinoColors();
  }
}

class _LearnCupertinoColors extends State<LearnCupertinoColors> {
  @override
  Widget build(BuildContext context) {
    return new CupertinoApp(
      home: new CupertinoPageScaffold(
        navigationBar: CommTitle.setCupertinoNavigationBar(context,"CupertinoColors",new Callback(
          codeOnTap: (){
            CodePreview.go(context, "CupertinoColors", "lib/widgets/cupertino/LearnCupertinoColors.dart");
          }
        )),
        child: new ListView(
          children: <Widget>[
            new Padding(
              padding: EdgeInsets.all(10),
              child: new Container(
                color: CupertinoColors.black,
                width: 200,
                height: 50,
              )
            ),
            new Padding(
                padding: EdgeInsets.all(10),
                child: new Container(
                  color: CupertinoColors.white,
                  width: 200,
                  height: 50,
                )
            ),
            new Padding(
                padding: EdgeInsets.all(10),
                child: new Container(
                  color: CupertinoColors.activeBlue,
                  width: 200,
                  height: 50,
                )
            ),
            new Padding(
                padding: EdgeInsets.all(10),
                child: new Container(
                  color: CupertinoColors.inactiveGray,
                  width: 200,
                  height: 50,
                )
            ),
            new Padding(
                padding: EdgeInsets.all(10),
                child: new Container(
                  color: CupertinoColors.activeGreen,
                  width: 200,
                  height: 50,
                )
            ),
          ],
        ),
      ),
    );
  }
}
