import 'package:flutter_study/utils/title_utils.dart';
import 'package:flutter/material.dart';
import '../comm/page/CodePreview.dart';

class LearnTabBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LearnTabBar();
  }
}

class _LearnTabBar extends State<LearnTabBar> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: choices.length,
        child: Scaffold(
          appBar: AppBar(
            primary: true,
            actions: <Widget>[
              CommTitle.setMaterialTitleViewRightBtn("源码",
                  Callback(codeOnTap: () {
                CodePreview.go(
                    context, "TabBar", "lib/layout/LearnTabBar.dart");
              }))
            ],
            title: Text("TabBar"),
            leading: GestureDetector(
              child: Icon(Icons.arrow_back_ios),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            bottom: TabBar(
              isScrollable: true,
              indicatorColor: Colors.yellowAccent,
              indicatorWeight: 10.0,
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: choices.map((Choice c) {
                return Tab(
                  text: c.title,
                  icon: Icon(c.icon),
                );
              }).toList(),
            ),
          ),
          body: TabBarView(
            children: choices.map((Choice c) {
              return Padding(
                padding: EdgeInsets.all(10.0),
                child: Card(
                  elevation: 10.0,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          c.icon,
                          size: 100.0,
                          color: Colors.blue,
                        ),
                        Text(
                          c.title,
                          style:
                              TextStyle(color: Colors.blue, fontSize: 30.0),
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
  const Choice({required this.icon, required this.title});

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
