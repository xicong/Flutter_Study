import 'package:flutter/material.dart';
import 'package:flutter_study/net_image_address.dart';
import '../comm/page/CodePreview.dart';
import '../utils/title_utils.dart';

class LearnGridView extends StatefulWidget {
  const LearnGridView({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _LearnGridView();
  }
}

class _LearnGridView extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommTitle.setMaterialAppBar(context, "GridView",
          Callback(codeOnTap: () {
        CodePreview.go(context, "GridView", "lib/list/LearnGridView.dart");
      })),
      body: GridView.builder(
        // SliverGridDelegateWithFixedCrossAxisCount可以直接指定每行（列）显示多少个Item
        // SliverGridDelegateWithMaxCrossAxisExtent会根据GridView的宽度和你设置的每个的宽度来自动计算没行显示多少个Item
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          maxCrossAxisExtent: 100.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Image.network(net_image_address.httpImgAddress,
            fit: BoxFit.cover,
          );
        },
        itemCount: 100,
      ),
    );
  }
}
