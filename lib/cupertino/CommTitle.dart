import 'package:flutter/cupertino.dart';
class CommTitle{

  static CupertinoNavigationBar setTitle(BuildContext context,String titleName){
    return new CupertinoNavigationBar(
      leading: new GestureDetector(
        child: new Icon(
          CupertinoIcons.back,
          color: CupertinoColors.white,
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      backgroundColor: CupertinoColors.activeBlue,
      middle: new Text(titleName,
        style: new TextStyle(
          fontWeight: FontWeight.bold,
          color: CupertinoColors.white
        ),
      ),
    );
  }

}