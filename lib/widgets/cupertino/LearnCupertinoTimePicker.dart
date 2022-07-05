import 'package:flutter_study/utils/title_utils.dart';
import 'package:flutter_study/comm/page/CodePreview.dart';
import 'package:flutter/cupertino.dart';

const double _kPickerSheetHeight = 216.0;
class LearnCupertinoTimePicker extends StatefulWidget {
  const LearnCupertinoTimePicker({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _LearnCupertinoTimePicker();
  }
}

class _LearnCupertinoTimePicker extends State<LearnCupertinoTimePicker> {
  Duration timer=const Duration(minutes: 50);
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
  // Widget _buildTimePicker(BuildContext context) {
  //   showCupertinoModalPopup<void>(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return _buildBottomPicker(
  //         CupertinoTimerPicker(
  //           initialTimerDuration: timer,
  //           minuteInterval: 5,
  //           onTimerDurationChanged: (Duration newTimer){
  //             setState(() {
  //               timer=newTimer;
  //             });
  //           },
  //         ),
  //       );
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
        navigationBar: CommTitle.setCupertinoNavigationBar(context,"CupertinoPicker",Callback(
          codeOnTap: (){
            CodePreview.go(context, "CupertinoPicker", "lib/widgets/cupertino/LearnCupertinoIcons.dart");
          }
        )),
        resizeToAvoidBottomInset: false, //是否要调整自己的大小以避免窗口的底部插入
        child: ListView(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(10),
              child: CupertinoButton(
                color: CupertinoColors.activeBlue,
                borderRadius: const BorderRadius.all(Radius.circular(5)),
                pressedOpacity: 0.5,
                onPressed: (){
                  // _buildTimePicker(context);
                },
                child: const Text("Time",
                  style: TextStyle(
                      color: CupertinoColors.black
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
