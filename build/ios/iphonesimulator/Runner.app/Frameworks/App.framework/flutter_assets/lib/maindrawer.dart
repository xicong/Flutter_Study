import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:package_info/package_info.dart';

import 'commpage/WebViewPage.dart';

/**
 * 首页的侧边栏
 */
class maindrawer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _maindrawer();
  }
}

class _maindrawer extends State<maindrawer> {
  PackageInfo _packageInfo = PackageInfo(
    appName: 'Unknown',
    packageName: 'Unknown',
    version: 'Unknown',
    buildNumber: 'Unknown',
  );

  _choosePageOpenModeDialog(BuildContext context, String url) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: new Text("请选择该页面在哪里打开?"),
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.all(Radius.circular(20))),
            children: <Widget>[
              ListTile(
                leading: new Icon(
                  Icons.radio_button_unchecked,
                  color: Colors.blue,
                ),
                title: new Text("WebView"),
                subtitle: new Text("在自带的WebView页面打开"),
                onTap: () {
                  Navigator.pop(context);
                  WebViewPage.go(context, "pub.dev", url);
                },
              ),
              ListTile(
                leading: new Icon(
                  Icons.radio_button_unchecked,
                  color: Colors.blue,
                ),
                title: new Text("浏览器"),
                subtitle: new Text("在自带的浏览器打开"),
                onTap: () {
                  Navigator.pop(context);
                  _launchURL(url);
                },
              )
            ],
          );
        });
  }

  _launchURL(String url) async {
    launch(url, forceSafariVC: false, forceWebView: false);
  }

  @override
  void initState() {
    super.initState();
    _initPackageInfo();
  }

  Future<void> _initPackageInfo() async {
    final PackageInfo info = await PackageInfo.fromPlatform();
    setState(() {
      _packageInfo = info;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: new ListView(
        padding: EdgeInsets.zero, //ListView会有一个上边距
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: new Text("学习君",
                style:
                    new TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            currentAccountPicture: new CircleAvatar(
              backgroundImage: NetworkImage(
                'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1585564148822&di=c1021e99f86b56b1cd4a4038197591e1&imgtype=0&src=http%3A%2F%2Fimg9.doubanio.com%2Fview%2Fgroup_topic%2Fl%2Fpublic%2Fp251240576.jpg',
              ),
            ),
            otherAccountsPictures: <Widget>[
              //其他图像最多设置三个
              new CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://dss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1618309945,4014036594&fm=26&gp=0.jpg"),
              ),
//                new CircleAvatar(
//                  backgroundImage: NetworkImage("https://dss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1618309945,4014036594&fm=26&gp=0.jpg"),
//                ),
//                new CircleAvatar(
//                  backgroundImage: NetworkImage("https://dss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1618309945,4014036594&fm=26&gp=0.jpg"),
//                )
            ],
            accountEmail: new Text(
              "00000000@qq.com",
              style: new TextStyle(
                fontSize: 12,
              ),
            ),
            onDetailsPressed: () {
//              当 accountName 或者 accountEmail 被点击的时候所触发的回调函数，可以用来显示其他额外的信息
              print("被点击了");
            },
          ),
          new ListTile(
            title: new Text("GitHub主页"),
            leading: new Icon(
              Icons.people,
              color: Colors.blue,
            ),
            trailing: new Icon(
              Icons.arrow_forward_ios,
              color: Colors.blue,
            ),
            onTap: () {
              Navigator.pop(context);
              _choosePageOpenModeDialog(context, "https://github.com/xicong");
            },
            onLongPress: () {},
          ),
          new ListTile(
            title: new Text("Pub.Dev"),
            leading: new Icon(
              Icons.people,
              color: Colors.blue,
            ),
            trailing: new Icon(
              Icons.arrow_forward_ios,
              color: Colors.blue,
            ),
            onTap: () {
              Navigator.pop(context);
              _choosePageOpenModeDialog(context, "https://pub.dev/");
            },
            onLongPress: () {},
          ),
          new AboutListTile(
            child: new Text("关于我"),
            icon: new Icon(
              Icons.child_care,
              color: Colors.blue,
            ),
            applicationIcon: Image.asset(
              "android/app/src/main/res/mipmap-xxhdpi/ic_launcher.png",
              width: 50,
              height: 50,
            ),
            applicationName: "appName:${_packageInfo.appName}",
            applicationVersion: "version:${_packageInfo.version}",
//            applicationLegalese:"applicationLegalese",
//            aboutBoxChildren: <Widget>[
//              new Text("该App主要个人学习用")
//            ],
          )
        ],
      ),
    );
    ;
  }
}
