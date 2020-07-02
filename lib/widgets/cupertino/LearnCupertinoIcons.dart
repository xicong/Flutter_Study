import 'package:Flutter_Study/comm/CommTitle.dart';
import 'package:Flutter_Study/comm/page/CodePreview.dart';
import 'package:flutter/cupertino.dart';

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
        navigationBar: CommTitle.setCupertinoNavigationBar(context,"CupertinoIcons",new Callback(
            codeOnTap: (){
              CodePreview.go(context, "CupertinoIcons", "lib/widgets/cupertino/LearnCupertinoIcons.dart");
            }
        )),
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
            new Padding(
                padding: EdgeInsets.all(10),
                child: Icon(CupertinoIcons.bluetooth,color: CupertinoColors.black,)
            ),
            new Padding(
                padding: EdgeInsets.all(10),
                child: Icon(CupertinoIcons.gear_big,color: CupertinoColors.black,)
            ),
            new Padding(
                padding: EdgeInsets.all(10),
                child: Icon(CupertinoIcons.gear_solid,color: CupertinoColors.black,)
            ),
            new Padding(
                padding: EdgeInsets.all(10),
                child: Icon(CupertinoIcons.group,color: CupertinoColors.black,)
            ),
            new Padding(
                padding: EdgeInsets.all(10),
                child: Icon(CupertinoIcons.group_solid,color: CupertinoColors.black,)
            ),
            new Padding(
                padding: EdgeInsets.all(10),
                child: Icon(CupertinoIcons.book_solid,color: CupertinoColors.black,)
            ),
            new Padding(
                padding: EdgeInsets.all(10),
                child: Icon(CupertinoIcons.bookmark,color: CupertinoColors.black,)
            ),
            new Padding(
                padding: EdgeInsets.all(10),
                child: Icon(CupertinoIcons.bookmark_solid,color: CupertinoColors.black,)
            ),
            new Padding(
                padding: EdgeInsets.all(10),
                child: Icon(CupertinoIcons.home,color: CupertinoColors.black,)
            ),
            new Padding(
                padding: EdgeInsets.all(10),
                child: Icon(CupertinoIcons.location_solid,color: CupertinoColors.black,)
            ),
            new Padding(
                padding: EdgeInsets.all(10),
                child: Icon(CupertinoIcons.location,color: CupertinoColors.black,)
            ),
          ],
        ),
      ),
    );
  }
}
