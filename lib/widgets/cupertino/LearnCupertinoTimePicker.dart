import 'package:flutter/cupertino.dart';
import 'package:flutterdemo/commpage/CodePreview.dart';
import 'package:intl/intl.dart';
import 'package:flutterdemo/comm/CommTitle.dart';
import 'package:flutterdemo/utils/ScreenUtils.dart';


const double _kPickerSheetHeight = 216.0;
class LearnCupertinoTimePicker extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _LearnCupertinoTimePicker();
  }
}

class _LearnCupertinoTimePicker extends State<LearnCupertinoTimePicker> {

  Duration timer=new Duration(minutes: 50);

  Widget _buildBottomPicker(Widget picker) {
    return Container(
      height: _kPickerSheetHeight,
      padding: const EdgeInsets.only(top: 6.0),
      color: CupertinoColors.white,
      child: DefaultTextStyle(
        style: const TextStyle(
          color: CupertinoColors.black,
          fontSize: 22.0,
        ),
        child: GestureDetector(
          // Blocks taps from propagating to the modal sheet and popping.
          onTap: () {},
          child: SafeArea(
            top: false,
            child: picker,
          ),
        ),
      ),
    );
  }

  Widget _buildTimePicker(BuildContext context) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) {
        return _buildBottomPicker(
          CupertinoTimerPicker(
            initialTimerDuration: timer,
            minuteInterval: 5,
            onTimerDurationChanged: (Duration newTimer){
              setState(() {
                timer=newTimer;
              });
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return new CupertinoApp(
      home: new CupertinoPageScaffold(
        navigationBar: CommTitle.setCupertinoNavigationBar(context,"CupertinoPicker",new Callback(
          codeOnTap: (){
            CodePreview.go(context, "CupertinoPicker", "lib/widgets/cupertino/LearnCupertinoIcons.dart");
          }
        )),
        resizeToAvoidBottomInset: false, //是否要调整自己的大小以避免窗口的底部插入
        child: new ListView(
          children: <Widget>[
            new Container(
              margin: EdgeInsets.all(10),
              child: new CupertinoButton(
                child: new Text("Time",
                  style: new TextStyle(
                      color: CupertinoColors.black
                  ),
                ),
                color: CupertinoColors.activeBlue,
                borderRadius: new BorderRadius.all(new Radius.circular(5)),
                pressedOpacity: 0.5,
                onPressed: (){
                  _buildTimePicker(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
