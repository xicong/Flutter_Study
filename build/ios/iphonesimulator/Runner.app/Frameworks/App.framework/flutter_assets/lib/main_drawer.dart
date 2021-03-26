import 'package:Flutter_Study/main_drawer_user_info.dart';
import 'package:Flutter_Study/utils/style_utils.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:package_info/package_info.dart';

import 'comm/page/WebViewPage.dart';

/**
 * 首页的侧边栏
 */
class mainDrawer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _mainDrawer();
  }
}

class _mainDrawer extends State<mainDrawer> {
  PackageInfo _packageInfo = PackageInfo(
    appName: 'Unknown',
    packageName: 'Unknown',
    version: 'Unknown',
    buildNumber: 'Unknown',
  );
  

  //选择网页是在app里面用WebView打开还是跳转到浏览器打开
  _choosePageOpenModeDialog(BuildContext context, String url) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: new Text("请选择该页面在哪里打开?"),
            shape: StyleUtils.radiusBorder(),
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
          new MainDrawerUserInfo(),
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
  }
}
