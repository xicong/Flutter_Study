import '../comm/page/CodePreview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../utils/title_utils.dart';

class LearnAboutDialog extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LearnAboutDialog();
  }
}

class _LearnAboutDialog extends State<LearnAboutDialog> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: CommTitle.setMaterialAppBar(context, "AboutDialog",
              Callback(codeOnTap: () {
            CodePreview.go(
                context, "AboutDialog", "lib/dialog/learn_about_dialog.dart");
          })),
          body: ListView(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      barrierDismissible: true, //点击外面是否可以关闭
                      builder: (context) {
                        return AboutDialog(
                          applicationIcon: Image.network(
                            "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1585653987208&di=c91f36f079f03bf679e879374eba8c9c&imgtype=0&src=http%3A%2F%2Fimg2.yiihuu.com%2Fupimg%2Fmanage%2F2015%2F09%2F15%2F14422855791647.jpg",
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                          applicationName: "Flutter学习",
                          applicationVersion: "1.0.0.1.0",
                          applicationLegalese: "applicationLegalese",
                          children: <Widget>[
                            Text("这里是一个自定义内容1"),
                            Text("这里是一个自定义内容1"),
                          ],
                        );
                      });
                },
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    "AboutDialog",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  margin: EdgeInsets.all(15),
                  padding: EdgeInsets.all(15),
                ),
              ),
            ],
          )),
    );
  }
}
