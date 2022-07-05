import 'package:flutter_study/utils/title_utils.dart';
import 'package:flutter_study/comm/page/CodePreview.dart';
import 'package:flutter/cupertino.dart';

class LearnCupertinoIcons extends StatefulWidget {
  const LearnCupertinoIcons({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _LearnCupertinoIcons();
  }
}

class _LearnCupertinoIcons extends State<LearnCupertinoIcons> {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
        navigationBar: CommTitle.setCupertinoNavigationBar(context,"CupertinoIcons",Callback(
            codeOnTap: (){
              CodePreview.go(context, "CupertinoIcons", "lib/widgets/cupertino/LearnCupertinoIcons.dart");
            }
        )),
        child: ListView(
          children: const <Widget>[
            Padding(
              padding: EdgeInsets.all(10),
              child: Icon(CupertinoIcons.back,color: CupertinoColors.black)
            ),
            Padding(
                padding: EdgeInsets.all(10),
                child: Icon(CupertinoIcons.forward,color: CupertinoColors.black)
            ),
            Padding(
                padding: EdgeInsets.all(10),
                child: Icon(CupertinoIcons.add,color: CupertinoColors.black,)
            ),
            Padding(
                padding: EdgeInsets.all(10),
                child: Icon(CupertinoIcons.add_circled,color: CupertinoColors.black,)
            ),
            Padding(
                padding: EdgeInsets.all(10),
                child: Icon(CupertinoIcons.add_circled_solid,color: CupertinoColors.black,)
            ),
            Padding(
                padding: EdgeInsets.all(10),
                child: Icon(CupertinoIcons.battery_25_percent,color: CupertinoColors.black,)
            ),
            Padding(
                padding: EdgeInsets.all(10),
                child: Icon(CupertinoIcons.mic,color: CupertinoColors.black,)
            ),
            Padding(
                padding: EdgeInsets.all(10),
                child: Icon(CupertinoIcons.volume_up,color: CupertinoColors.black,)
            ),
            Padding(
                padding: EdgeInsets.all(10),
                child: Icon(CupertinoIcons.volume_off,color: CupertinoColors.black,)
            ),
            Padding(
                padding: EdgeInsets.all(10),
                child: Icon(CupertinoIcons.create_solid,color: CupertinoColors.black,)
            ),
            Padding(
                padding: EdgeInsets.all(10),
                child: Icon(CupertinoIcons.bluetooth,color: CupertinoColors.black,)
            ),
            Padding(
                padding: EdgeInsets.all(10),
                child: Icon(CupertinoIcons.gear_big,color: CupertinoColors.black,)
            ),
            Padding(
                padding: EdgeInsets.all(10),
                child: Icon(CupertinoIcons.gear_solid,color: CupertinoColors.black,)
            ),
            Padding(
                padding: EdgeInsets.all(10),
                child: Icon(CupertinoIcons.group,color: CupertinoColors.black,)
            ),
            Padding(
                padding: EdgeInsets.all(10),
                child: Icon(CupertinoIcons.group_solid,color: CupertinoColors.black,)
            ),
            Padding(
                padding: EdgeInsets.all(10),
                child: Icon(CupertinoIcons.book_solid,color: CupertinoColors.black,)
            ),
            Padding(
                padding: EdgeInsets.all(10),
                child: Icon(CupertinoIcons.bookmark,color: CupertinoColors.black,)
            ),
            Padding(
                padding: EdgeInsets.all(10),
                child: Icon(CupertinoIcons.bookmark_solid,color: CupertinoColors.black,)
            ),
            Padding(
                padding: EdgeInsets.all(10),
                child: Icon(CupertinoIcons.home,color: CupertinoColors.black,)
            ),
            Padding(
                padding: EdgeInsets.all(10),
                child: Icon(CupertinoIcons.location_solid,color: CupertinoColors.black,)
            ),
            Padding(
                padding: EdgeInsets.all(10),
                child: Icon(CupertinoIcons.location,color: CupertinoColors.black,)
            ),
          ],
        ),
      ),
    );
  }
}
