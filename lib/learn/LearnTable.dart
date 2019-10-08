import 'package:flutter/material.dart';
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
        appBar: new AppBar(
          title: new Text('table'),
          leading: new GestureDetector(
            child: Icon(Icons.arrow_back_ios),
            onTap: (){
              Navigator.pop(context);
            },
          ),
        ),
        body: new Table(
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
      ),
    );
  }
}