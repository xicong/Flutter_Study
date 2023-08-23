import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_study/main_drawer_user_info.dart';
import 'package:flutter_study/utils/platform_utils.dart';
import 'package:flutter_study/utils/style_utils.dart';
import 'package:flutter_study/utils/toast_utils.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'comm/page/WebViewPage.dart';

/// 首页的侧边栏
class mainDrawer extends StatefulWidget {
  const mainDrawer({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _mainDrawer();
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
            title: const Text("请选择该页面在哪里打开?"),
            shape: StyleUtils.radiusBorder(),
            children: <Widget>[
              ListTile(
                leading: const Icon(
                  Icons.radio_button_unchecked,
                  color: Colors.blue,
                ),
                title: const Text("WebView"),
                subtitle: const Text("在自带的WebView页面打开"),
                onTap: () {
                  Navigator.pop(context);
                  if(isMobile()){
                    WebViewPage.go(context, "pub.dev", url);
                  }else{
                    showToast(context,"当前设备不支持该功能");
                  }
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.radio_button_unchecked,
                  color: Colors.blue,
                ),
                title: const Text("浏览器"),
                subtitle: const Text("在自带的浏览器打开"),
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
  Widget listItem(String title,Widget leading,String address){
    return ListTile(
      title: Text(title),
      leading: leading,
      trailing: const Icon(
        Icons.arrow_forward_ios,
        color: Colors.blue,
      ),
      onTap: () {
        Navigator.pop(context);
        _choosePageOpenModeDialog(context, address);
      },
      onLongPress: () {},
    );
  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero, //ListView会有一个上边距
        children: <Widget>[
          const MainDrawerUserInfo(),
          listItem("GitHub主页",const Icon(Icons.people, color: Colors.blue,),"https://github.com/xicong"),
          listItem("Pub.Dev",const Icon(Icons.people, color: Colors.blue,),"https://pub.dev/"),
          AboutListTile(
            icon: const Icon( //Widget类型可选命名参数，显示的图标
              Icons.child_care,
              color: Colors.blue,
            ),
            applicationIcon: Image.asset(  //Widget类型可选命名参数，在AboutDialog中显示在应用程序名称旁边的图标
              "res/images/mine.png",
              width: 40,
              height: 40,
            ),
            applicationName: _packageInfo.appName,  //String类型可选命名参数，应用程序名称
            applicationVersion: "${_packageInfo.packageName}\n${_packageInfo.version}",  //String类型可选命名参数，此应用程序版本的版本
            applicationLegalese: "版权所有，违者必究",   //String类型可选命名参数，在AboutDialog中以小字体显示的字符串
            aboutBoxChildren: <Widget>[  //List<Widget>类型可选命名参数，在名称，版本和legalese之后添加到AboutDialog的小部件
              Container(
                margin: const EdgeInsets.all(20),
                child: const Text("Flutter学习仅供自己学习，记录，参考",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ),
            ],
            dense: false,
            child: const Text("关于我"),  //bool类型可选命名参数，此列表图块是否是垂直密集列表的一部分
          )
        ],
      ),
    );
  }
}
