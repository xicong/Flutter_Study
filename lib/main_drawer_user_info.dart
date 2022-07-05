import 'dart:io';
import 'package:flutter_study/net_image_address.dart';
import 'package:flutter_study/utils/style_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study/utils/toast_utils.dart';
import 'package:flutter_study/utils/user_info_sp_utils.dart';
import 'package:image_picker/image_picker.dart';
import 'net_image_address.dart';

class MainDrawerUserInfo extends StatefulWidget {
  const MainDrawerUserInfo({Key? key}) : super(key: key);
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
            title: const Text("请选择"),
            shape: StyleUtils.radiusBorder(),
            children: <Widget>[
              ListTile(
                leading: const Icon(
                  Icons.radio_button_unchecked,
                  color: Colors.blue,
                ),
                title: const Text("查看大图"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.radio_button_unchecked,
                  color: Colors.blue,
                ),
                title: const Text("相机"),
                onTap: () {
                  Navigator.pop(context);
                  getCamera();
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.radio_button_unchecked,
                  color: Colors.blue,
                ),
                title: const Text("相册"),
                onTap: () {
                  Navigator.pop(context);
                  getGallery();
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.radio_button_unchecked,
                  color: Colors.blue,
                ),
                title: const Text("设置网络图片地址"),
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
    if(pickedFile?.path.isNotEmpty == true){
      UserInfoSpUtils.saveUserHeadImg(pickedFile!.path);
      updateHeadImage();
    }
  }

  //相册
  Future getGallery() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    if(pickedFile?.path.isNotEmpty == true){
      UserInfoSpUtils.saveUserHeadImg(pickedFile!.path);
      updateHeadImage();
    }
  }

  late File _UserHeadImg;
  //刷新图像
  void updateHeadImage() {
    Future(() {
      return UserInfoSpUtils.getUserHeadImg();
    }).then((value) {
      setState(() {
        if(value?.isNotEmpty == true){
          _UserHeadImg = File(value!);
        }
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    updateHeadImage();
    return UserAccountsDrawerHeader(
      accountName: const Text("学习君",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
      currentAccountPicture: GestureDetector(
        child:
            //第一种圆图片
            CircleAvatar(
               backgroundImage: NetworkImage(net_image_address.httpImgAddress),
             ),
            // CircleAvatar(backgroundImage: if (_UserHeadImg == null) ? AssetImage("res/images/mine.png") : FileImage(_UserHeadImg)),
        onTap: () {
          _chooseLookBigImageUpdateImage(context);
        },
      ),
      otherAccountsPictures:  <Widget>[
        //其他图像最多设置三个
        const CircleAvatar(
            backgroundImage: AssetImage("res/images/mine.png")
        ),
        CircleAvatar(
          backgroundImage: NetworkImage(net_image_address.httpImgAddress),
        ),
        CircleAvatar(
          backgroundImage: NetworkImage(net_image_address.httpImgAddress),
        )
      ],
      accountEmail: const Text("812887928@qq.com",
        style: TextStyle(
          fontSize: 12,
        ),
      ),
      onDetailsPressed: () {
//      当 accountName 或者 accountEmail 被点击的时候所触发的回调函数，可以用来显示其他额外的信息
        ToastUtils.show("被点击了",context);
      },
    );
  }
}
