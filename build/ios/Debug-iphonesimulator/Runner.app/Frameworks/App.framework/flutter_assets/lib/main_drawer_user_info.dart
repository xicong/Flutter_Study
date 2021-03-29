import 'package:flutter_study/utils/style_utils.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter_study/utils/user_info_sp_utils.dart';
import 'package:image_picker/image_picker.dart';

class MainDrawerUserInfo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainDrawerUserInfo();
  }
}

class _MainDrawerUserInfo extends State<MainDrawerUserInfo> {
  //选择查看大图还是修改图像
  _chooseLookBigImageUpdateImage(BuildContext buildContext) {
    return showDialog(
        context: buildContext,
        builder: (BuildContext buildContext) {
          return SimpleDialog(
            title: new Text("请选择"),
            shape: StyleUtils.radiusBorder(),
            children: <Widget>[
              ListTile(
                leading: new Icon(
                  Icons.radio_button_unchecked,
                  color: Colors.blue,
                ),
                title: new Text("查看大图"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: new Icon(
                  Icons.radio_button_unchecked,
                  color: Colors.blue,
                ),
                title: new Text("相机"),
                onTap: () {
                  Navigator.pop(context);
                  getCamera();
                },
              ),
              ListTile(
                leading: new Icon(
                  Icons.radio_button_unchecked,
                  color: Colors.blue,
                ),
                title: new Text("相册"),
                onTap: () {
                  Navigator.pop(context);
                  getGallery();
                },
              ),
              ListTile(
                leading: new Icon(
                  Icons.radio_button_unchecked,
                  color: Colors.blue,
                ),
                title: new Text("设置网络图片地址"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          );
        });
  }

  //拍照
  final picker = ImagePicker();
  Future getCamera() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);
    UserInfoSpUtils.saveUserHeadImg(pickedFile.path);
    updateHeadImage();
  }

  //相册
  Future getGallery() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    UserInfoSpUtils.saveUserHeadImg(pickedFile.path);
    updateHeadImage();
  }

  File _UserHeadImg;
  //刷新图像
  void updateHeadImage() {
    new Future(() {
      return UserInfoSpUtils.getUserHeadImg();
    }).then((value) {
      setState(() {
        _UserHeadImg = File(value);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    updateHeadImage();
    return new UserAccountsDrawerHeader(
      accountName: new Text("学习君",
          style: new TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
      currentAccountPicture: new GestureDetector(
        child:
            //第一种圆图片
//              new CircleAvatar(
//                backgroundImage: NetworkImage(
//                  'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1585564148822&di=c1021e99f86b56b1cd4a4038197591e1&imgtype=0&src=http%3A%2F%2Fimg9.doubanio.com%2Fview%2Fgroup_topic%2Fl%2Fpublic%2Fp251240576.jpg',
//                ),
//              ),
            new CircleAvatar(
                backgroundImage: _UserHeadImg == null
                    ? AssetImage("res/images/mine.png")
                    : FileImage(_UserHeadImg)),
        onTap: () {
          _chooseLookBigImageUpdateImage(context);
        },
      ),
      otherAccountsPictures: <Widget>[
        //其他图像最多设置三个
        new CircleAvatar(
            backgroundImage: _UserHeadImg == null
                ? AssetImage("res/images/mine.png")
                : FileImage(_UserHeadImg)),
//                new CircleAvatar(
//                  backgroundImage: NetworkImage("https://dss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1618309945,4014036594&fm=26&gp=0.jpg"),
//                ),å
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
    );
  }
}
