import 'package:flutter/cupertino.dart';
class CommTitle{

  static CupertinoNavigationBar setTitle(BuildContext context,String titleName){
    return new CupertinoNavigationBar(
      leading: new GestureDetector(
        child: new Icon(
          CupertinoIcons.back,
          color: CupertinoColors.black,
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      middle: new Text(titleName),
    );
  }

}