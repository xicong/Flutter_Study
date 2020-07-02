import 'package:flutter/material.dart';
import '../comm/page/CodePreview.dart';
import '../comm/CommTitle.dart';
import '../utils/ScreenUtils.dart';
class LearnTable extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new  _LearnTable();
  }
}
class _LearnTable extends State<LearnTable>{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: CommTitle.setMaterialAppBar(context, "Table",new Callback(
          codeOnTap: (){
            CodePreview.go(context, "Table", "lib/list/LearnTable.dart");
          }
        )),
        body: new Column(
          children: <Widget>[
            new Container(
              alignment:Alignment.centerLeft,
              width: ScreenUtils.getScreenWidth(context),
              height: 50,
              color: Colors.black,
              child:  new Text("⚠️Table中每一行的列数需要一致，否则报错",
                style: new TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            new Table(
              border: new TableBorder.all(width: 1.0,color: Colors.purpleAccent),
              children: <TableRow>[
                new TableRow(
                  children: <Widget>[
                    new TableCell(
                      child: new Center(
                        child: new Text('设置1'),
                      ),
                    ),
                    new TableCell(
                      child: new Center(
                        child: new Text('设置2'),
                      ),
                    ),
                    new TableCell(
                      child: new Center(
                        child: new Text('设置3'),
                      ),
                    ),
                    new TableCell(
                      child: new Center(
                        child: new Text('设置4'),
                      ),
                    ),
                  ],
                ),
                new TableRow(
                  children: <Widget>[
                    new TableCell(
                      child: new Center(
                        child: new Text('设置1'),
                      ),
                    ),
                    new TableCell(
                      child: new Center(
                        child: new Text('设置2'),
                      ),
                    ),
                    new TableCell(
                      child: new Center(
                        child: new Text('设置3'),
                      ),
                    ),
                    new TableCell(
                      child: new Center(
                        child: new Text('设置4'),
                      ),
                    ),
                  ],
                ),
                new TableRow(
                  children: <Widget>[
                    new TableCell(
                      child: new Center(
                        child: new Text('设置1'),
                      ),
                    ),
                    new TableCell(
                      child: new Center(
                        child: new Text('设置2'),
                      ),
                    ),
                    new TableCell(
                      child: new Center(
                        child: new Text('设置3'),
                      ),
                    ),
                    new TableCell(
                      child: new Center(
                        child: new Text('设置4'),
                      ),
                    ),
                  ],
                ),
                new TableRow(
                  children: <Widget>[
                    new TableCell(
                      child: new Center(
                        child: new Text('设置1'),
                      ),
                    ),
                    new TableCell(
                      child: new Center(
                        child: new Text('设置2'),
                      ),
                    ),
                    new TableCell(
                      child: new Center(
                        child: new Text('设置3'),
                      ),
                    ),
                    new TableCell(
                      child: new Center(
                        child: new Text('设置4'),
                      ),
                    ),
                  ],
                ),
                new TableRow(
                  children: <Widget>[
                    new TableCell(
                      child: new Center(
                        child: new Text('设置1'),
                      ),
                    ),
                    new TableCell(
                      child: new Center(
                        child: new Text('设置2'),
                      ),
                    ),
                    new TableCell(
                      child: new Center(
                        child: new Text('设置3'),
                      ),
                    ),
                    new TableCell(
                      child: new Center(
                        child: new Text('设置4'),
                      ),
                    ),
                  ],
                ),
                new TableRow(
                  children: <Widget>[
                    new TableCell(
                      child: new Center(
                        child: new Text('设置1'),
                      ),
                    ),
                    new TableCell(
                      child: new Center(
                        child: new Text('设置2'),
                      ),
                    ),
                    new TableCell(
                      child: new Center(
                        child: new Text('设置3'),
                      ),
                    ),
                    new TableCell(
                      child: new Center(
                        child: new Text('设置4'),
                      ),
                    ),
                  ],
                ),
                new TableRow(
                  children: <Widget>[
                    new TableCell(
                      child: new Center(
                        child: new Text('设置1'),
                      ),
                    ),
                    new TableCell(
                      child: new Center(
                        child: new Text('设置2'),
                      ),
                    ),
                    new TableCell(
                      child: new Center(
                        child: new Text('设置3'),
                      ),
                    ),
                    new TableCell(
                      child: new Center(
                        child: new Text('设置4'),
                      ),
                    ),
                  ],
                ),
                new TableRow(
                  children: <Widget>[
                    new TableCell(
                      child: new Center(
                        child: new Text('设置1'),
                      ),
                    ),
                    new TableCell(
                      child: new Center(
                        child: new Text('设置2'),
                      ),
                    ),
                    new TableCell(
                      child: new Center(
                        child: new Text('设置3'),
                      ),
                    ),
                    new TableCell(
                      child: new Center(
                        child: new Text('设置4'),
                      ),
                    ),
                  ],
                ),
                new TableRow(
                  children: <Widget>[
                    new TableCell(
                      child: new Center(
                        child: new Text('设置1'),
                      ),
                    ),
                    new TableCell(
                      child: new Center(
                        child: new Text('设置2'),
                      ),
                    ),
                    new TableCell(
                      child: new Center(
                        child: new Text('设置3'),
                      ),
                    ),
                    new TableCell(
                      child: new Center(
                        child: new Text('设置4'),
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