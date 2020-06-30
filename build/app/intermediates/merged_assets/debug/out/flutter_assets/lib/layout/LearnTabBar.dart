import 'package:flutter/material.dart';
import 'package:Flutter_Study/comm/CommTitle.dart';
import 'package:Flutter_Study/commpage/CodePreview.dart';

class LearnTabBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LearnTabBar();
  }
}

class _LearnTabBar extends State<LearnTabBar> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new DefaultTabController(
        length: choices.length,
        child: new Scaffold(
          appBar: new AppBar(
            primary: true,
            actions: <Widget>[
              CommTitle.setMaterialTitleViewRightBtn("源码",
                  new Callback(codeOnTap: () {
                CodePreview.go(
                    context, "TabBar", "lib/layout/LearnTabBar.dart");
              }))
            ],
            title: new Text("TabBar"),
            leading: new GestureDetector(
              child: Icon(Icons.arrow_back_ios),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            bottom: new TabBar(
              isScrollable: true,
              indicatorColor: Colors.yellowAccent,
              indicatorWeight: 10.0,
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: choices.map((Choice c) {
                return new Tab(
                  text: c.title,
                  icon: new Icon(c.icon),
                );
              }).toList(),
            ),
          ),
          body: new TabBarView(
            children: choices.map((Choice c) {
              return new Padding(
                padding: EdgeInsets.all(10.0),
                child: new Card(
                  elevation: 10.0,
                  child: new Center(
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Icon(
                          c.icon,
                          size: 100.0,
                          color: Colors.blue,
                        ),
                        new Text(
                          c.title,
                          style:
                              new TextStyle(color: Colors.blue, fontSize: 30.0),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class Choice {
  const Choice({this.icon, this.title});

  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: "CAR", icon: Icons.directions_car),
  const Choice(title: "PRINT", icon: Icons.print),
  const Choice(title: "ANDROID", icon: Icons.android),
  const Choice(title: "MAP", icon: Icons.map),
  const Choice(title: "PHONE", icon: Icons.phone),
  const Choice(title: "ALARMS", icon: Icons.access_alarms),
  const Choice(title: "BLUETOOTH", icon: Icons.bluetooth),
];
