import 'package:flutter_study/utils/title_utils.dart';
import 'package:flutter/material.dart';

import '../../comm/page/CodePreview.dart';

class LearnMergeableMaterialItem extends StatefulWidget {
  const LearnMergeableMaterialItem({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _LearnMergeableMaterialItem();
  }
}

class _LearnMergeableMaterialItem extends State<LearnMergeableMaterialItem> {
  final List<MergeableMaterialItem> items = <MergeableMaterialItem>[];
  bool currIndex = false;
  int currIndexNum = 1;
  _isChildExpanded() {
    setState(() {
      currIndex ? currIndex = false : currIndex = true;
      currIndexNum++;
    });
  }
  @override
  Widget build(BuildContext context) {
    items.add(
        //class MaterialSlice extends MergeableMaterialItem
        MaterialSlice(
            key: ValueKey<int>(currIndexNum),
            child: Column(children: <Widget>[
              // header,
              AnimatedCrossFade(
                firstChild: Container(
                  height: 20.0,
                  width: 20.0,
                  color: Colors.green,
                ),
                secondChild: Container(
                  height: 20.0,
                  width: 20.0,
                  color: Colors.red,
                ),
                crossFadeState: currIndex
                    ? CrossFadeState.showSecond
                    : CrossFadeState.showFirst,
                firstCurve:
                    const Interval(0.0, 0.6, curve: Curves.fastOutSlowIn),
                secondCurve:
                    const Interval(0.4, 1.0, curve: Curves.fastOutSlowIn),
                sizeCurve: Curves.fastOutSlowIn,
                duration: Duration(microseconds: 6),
              )
            ])));

    return Scaffold(
      appBar:
          CommTitle.setMaterialAppBar(context, "MergeableMaterialItem", Callback(codeOnTap: (){
            CodePreview.go(context, "MergeableMaterialItem", "lib/widgets/material/LearnMergeableMaterialItem.dart");
          })),
      body: Column(
        children: <Widget>[
          MergeableMaterial(hasDividers: true, children: items),
          ElevatedButton(
            child: const Text("点击添加"),
            onPressed: () {
              _isChildExpanded();
            },
          )
        ],
      ),
    );
  }
}
