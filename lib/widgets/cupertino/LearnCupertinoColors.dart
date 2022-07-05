import 'package:flutter_study/utils/title_utils.dart';
import 'package:flutter_study/comm/page/CodePreview.dart';
import 'package:flutter/cupertino.dart';

class LearnCupertinoColors extends StatefulWidget {
  const LearnCupertinoColors({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _LearnCupertinoColors();
  }
}

class _LearnCupertinoColors extends State<LearnCupertinoColors> {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
        navigationBar: CommTitle.setCupertinoNavigationBar(context,"CupertinoColors",Callback(
          codeOnTap: (){
            CodePreview.go(context, "CupertinoColors", "lib/widgets/cupertino/LearnCupertinoColors.dart");
          }
        )),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                color: CupertinoColors.black,
                width: 200,
                height: 50,
              )
            ),
            Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  color: CupertinoColors.white,
                  width: 200,
                  height: 50,
                )
            ),
            Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  color: CupertinoColors.activeBlue,
                  width: 200,
                  height: 50,
                )
            ),
            Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  color: CupertinoColors.inactiveGray,
                  width: 200,
                  height: 50,
                )
            ),
            Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
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
