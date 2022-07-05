import 'package:flutter/material.dart';
import 'package:flutter_study/utils/style_utils.dart';

/// 封装一个公用的item
class CommListItem {
  static GestureDetector _setListItemView(BuildContext context, String title,
      String description, Widget name) {
    return GestureDetector(
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(5),
        decoration: StyleUtils.blueRadiusDecoration(),
        child: Flex(
          //之前直接用row+column文字过长会出现内容显示不下的错误，
          // 因为row+column都是大小随着内容的增加增加的，除非设置固定大小，但是大小又不好算，所以用flex+Expanded来
          // 实现，可以用flex: 1去占剩下的空间，然后刚好把文字放进去
          direction: Axis.horizontal,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Flex(
                crossAxisAlignment: CrossAxisAlignment.start,
                direction: Axis.vertical,
                children: <Widget>[
                  Text(
                    title,
                    maxLines: 1,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black),
                  ),
                  Text(
                    description,
                    style: const TextStyle(fontSize: 15, color: Colors.grey),
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
            )
          ],
        ),
      ),
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) {
              return name;
            }));
      },
    );
  }

  static Widget setCupertinoListItem(
      BuildContext context, String title, String description, Widget name) {
    return _setListItemView(context, title, description, name);
  }

  static Widget setMaterialListItem(
      BuildContext context, String title, String description, Widget name) {
    return _setListItemView(context, title, description, name);
  }
}
