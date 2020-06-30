import 'package:flutter/material.dart';
import 'package:Flutter_Study/comm/CommTitle.dart';

class LearnMaterialButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _LearnMaterialButton();
  }
}

class _LearnMaterialButton extends State<LearnMaterialButton> {
  TextStyle textStyle = new TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: CommTitle.setMaterialAppBar(context, "MaterialButton",null),
      body: new ListView.builder(
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            switch (index) {
              case 0:
                return new Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: new MaterialButton(
                    child: new Text(
                      "按钮$index",
                      style: textStyle,
                    ),
                    color: Theme.of(context).accentColor,
                    onPressed: () {},
                  ),
                );
                break;
              case 1:
                return new Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: new FlatButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.timer,
                      color: Colors.white,
                    ),
                    label: new Text(
                      "按钮$index",
                      style: textStyle,
                    ),
                    color: Theme.of(context).accentColor,
                  ),
                );
              case 2:
                return new Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: new RaisedButton(
                    onPressed: () {},
                    child: new Text(
                      "按钮$index",
                      style: textStyle,
                    ),
                    color: Theme.of(context).accentColor,
                  ),
                );
                break;
            }
            return null;
          }),
    );
  }
}
