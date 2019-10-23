import 'package:flutter/cupertino.dart';
import 'package:flutterdemo/cupertino/CommTitle.dart';

class LearnCupertinoIcons extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _LearnCupertinoIcons();
  }
}

class _LearnCupertinoIcons extends State<LearnCupertinoIcons> {
  @override
  Widget build(BuildContext context) {
    return new CupertinoApp(
      home: new CupertinoPageScaffold(
        navigationBar: CommTitle.setTitle(context,"CupertinoColors"),
        child: new ListView(
          children: <Widget>[
            new Padding(
              padding: EdgeInsets.all(10),
              child: Icon(CupertinoIcons.back,color: CupertinoColors.black,)
            ),
            new Padding(
                padding: EdgeInsets.all(10),
                child: Icon(CupertinoIcons.forward,color: CupertinoColors.black,)
            ),
            new Padding(
                padding: EdgeInsets.all(10),
                child: Icon(CupertinoIcons.add,color: CupertinoColors.black,)
            ),
            new Padding(
                padding: EdgeInsets.all(10),
                child: Icon(CupertinoIcons.add_circled,color: CupertinoColors.black,)
            ),
            new Padding(
                padding: EdgeInsets.all(10),
                child: Icon(CupertinoIcons.add_circled_solid,color: CupertinoColors.black,)
            ),
            new Padding(
                padding: EdgeInsets.all(10),
                child: Icon(CupertinoIcons.battery_25_percent,color: CupertinoColors.black,)
            ),
            new Padding(
                padding: EdgeInsets.all(10),
                child: Icon(CupertinoIcons.mic,color: CupertinoColors.black,)
            ),
            new Padding(
                padding: EdgeInsets.all(10),
                child: Icon(CupertinoIcons.volume_up,color: CupertinoColors.black,)
            ),
            new Padding(
                padding: EdgeInsets.all(10),
                child: Icon(CupertinoIcons.volume_off,color: CupertinoColors.black,)
            ),
            new Padding(
                padding: EdgeInsets.all(10),
                child: Icon(CupertinoIcons.create_solid,color: CupertinoColors.black,)
            ),
          ],
        ),
      ),
    );
  }
}
