import 'package:flutter/material.dart';
import '../comm/page/CodePreview.dart';
import '../utils/title_utils.dart';
import '../utils/screen_utils.dart';

class LearnTable extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LearnTable();
  }
}

class _LearnTable extends State<LearnTable> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: CommTitle.setMaterialAppBar(context, "Table",
            Callback(codeOnTap: () {
          CodePreview.go(context, "Table", "lib/list/LearnTable.dart");
        })),
        body: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              width: ScreenUtils.getScreenWidth(context),
              height: 50,
              color: Colors.black,
              child: Text(
                "⚠️Table中每一行的列数需要一致，否则报错",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            Table(
              border:
                  TableBorder.all(width: 1.0, color: Colors.purpleAccent),
              children: <TableRow>[
                TableRow(
                  children: <Widget>[
                    TableCell(
                      child: Center(
                        child: Text('设置1'),
                      ),
                    ),
                    TableCell(
                      child: Center(
                        child: Text('设置2'),
                      ),
                    ),
                    TableCell(
                      child: Center(
                        child: Text('设置3'),
                      ),
                    ),
                    TableCell(
                      child: Center(
                        child: Text('设置4'),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: <Widget>[
                    TableCell(
                      child: Center(
                        child: Text('设置1'),
                      ),
                    ),
                    TableCell(
                      child: Center(
                        child: Text('设置2'),
                      ),
                    ),
                    TableCell(
                      child: Center(
                        child: Text('设置3'),
                      ),
                    ),
                    TableCell(
                      child: Center(
                        child: Text('设置4'),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: <Widget>[
                    TableCell(
                      child: Center(
                        child: Text('设置1'),
                      ),
                    ),
                    TableCell(
                      child: Center(
                        child: Text('设置2'),
                      ),
                    ),
                    TableCell(
                      child: Center(
                        child: Text('设置3'),
                      ),
                    ),
                    TableCell(
                      child: Center(
                        child: Text('设置4'),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: <Widget>[
                    TableCell(
                      child: Center(
                        child: Text('设置1'),
                      ),
                    ),
                    TableCell(
                      child: Center(
                        child: Text('设置2'),
                      ),
                    ),
                    TableCell(
                      child: Center(
                        child: Text('设置3'),
                      ),
                    ),
                    TableCell(
                      child: Center(
                        child: Text('设置4'),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: <Widget>[
                    TableCell(
                      child: Center(
                        child: Text('设置1'),
                      ),
                    ),
                    TableCell(
                      child: Center(
                        child: Text('设置2'),
                      ),
                    ),
                    TableCell(
                      child: Center(
                        child: Text('设置3'),
                      ),
                    ),
                    TableCell(
                      child: Center(
                        child: Text('设置4'),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: <Widget>[
                    TableCell(
                      child: Center(
                        child: Text('设置1'),
                      ),
                    ),
                    TableCell(
                      child: Center(
                        child: Text('设置2'),
                      ),
                    ),
                    TableCell(
                      child: Center(
                        child: Text('设置3'),
                      ),
                    ),
                    TableCell(
                      child: Center(
                        child: Text('设置4'),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: <Widget>[
                    TableCell(
                      child: Center(
                        child: Text('设置1'),
                      ),
                    ),
                    TableCell(
                      child: Center(
                        child: Text('设置2'),
                      ),
                    ),
                    TableCell(
                      child: Center(
                        child: Text('设置3'),
                      ),
                    ),
                    TableCell(
                      child: Center(
                        child: Text('设置4'),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: <Widget>[
                    TableCell(
                      child: Center(
                        child: Text('设置1'),
                      ),
                    ),
                    TableCell(
                      child: Center(
                        child: Text('设置2'),
                      ),
                    ),
                    TableCell(
                      child: Center(
                        child: Text('设置3'),
                      ),
                    ),
                    TableCell(
                      child: Center(
                        child: Text('设置4'),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: <Widget>[
                    TableCell(
                      child: Center(
                        child: Text('设置1'),
                      ),
                    ),
                    TableCell(
                      child: Center(
                        child: Text('设置2'),
                      ),
                    ),
                    TableCell(
                      child: Center(
                        child: Text('设置3'),
                      ),
                    ),
                    TableCell(
                      child: Center(
                        child: Text('设置4'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
