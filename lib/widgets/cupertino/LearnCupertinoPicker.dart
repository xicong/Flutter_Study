import 'package:flutter_study/utils/title_utils.dart';
import 'package:flutter_study/comm/page/CodePreview.dart';
import 'package:flutter/cupertino.dart';

const double _kPickerSheetHeight = 216.0;
const double _kPickerItemHeight = 32.0;

const List<String> coolColorNames = <String>[
  'Sarcoline', 'Coquelicot', 'Smaragdine', 'Mikado', 'Glaucous', 'Wenge',
  'Fulvous', 'Xanadu', 'Falu', 'Eburnean', 'Amaranth', 'Australien',
  'Banan', 'Falu', 'Gingerline', 'Incarnadine', 'Labrador', 'Nattier',
  'Pervenche', 'Sinoper', 'Verditer', 'Watchet', 'Zaffre',
];


class LearnCupertinoPicker extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LearnCupertinoPicker();
  }
}

class _LearnCupertinoPicker extends State<LearnCupertinoPicker> {

  int _selectedColorIndex = 0;

  Duration timer = const Duration();

  // Value that is shown in the date picker in date mode.
  DateTime date = DateTime.now();

  // Value that is shown in the date picker in time mode.
  DateTime time = DateTime.now();

  // Value that is shown in the date picker in dateAndTime mode.
  DateTime dateTime = DateTime.now();

  Widget _buildMenu(List<Widget> children) {
    return Container(
      decoration: BoxDecoration(
        color:CupertinoColors.inactiveGray,
        border: const Border(
          top: BorderSide(color: Color(0xFFBCBBC1), width: 0.0),
          bottom: BorderSide(color: Color(0xFFBCBBC1), width: 0.0),
        ),
      ),
      height: 44.0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SafeArea(
          top: false,
          bottom: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: children,
          ),
        ),
      ),
    );
  }

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

  // Widget _buildColorPicker(BuildContext context) {
  //   final FixedExtentScrollController scrollController =
  //   FixedExtentScrollController(initialItem: _selectedColorIndex);
  //   showCupertinoModalPopup<void>(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return _buildBottomPicker(
  //         CupertinoPicker(
  //           magnification:1.0, // 整体放大率
  //           //offAxisFraction:10.0,// 球面效果的透视系数,消失点位置
  //           scrollController: scrollController,// 用于读取和控制当前项的FixedxtentScrollController
  //           itemExtent: _kPickerItemHeight,// 所以子节点 统一高度
  //           backgroundColor: CupertinoColors.white,// 所有子节点下面的背景颜色
  //           useMagnifier:true,// 是否使用放大效果
  //           onSelectedItemChanged: (int index) { // 当正中间选项改变时的回调
  //             if (mounted) {
  //               setState(() => _selectedColorIndex = index);
  //             }
  //           },
  //           children: List<Widget>.generate(coolColorNames.length, (int index) {
  //             return Center(child:
  //             Text(coolColorNames[index]),
  //             );
  //           }),
  //         ),
  //       );
  //     },
  //   );
  // }

  // Widget _buildCountdownTimerPicker(BuildContext context) {
  //   showCupertinoModalPopup<void>(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return _buildBottomPicker(
  //         CupertinoTimerPicker(
  //           initialTimerDuration: timer,
  //           onTimerDurationChanged: (Duration newTimer) {
  //             if (mounted) {
  //               setState(() => timer = newTimer);
  //             }
  //           },
  //         ),
  //       );
  //     },
  //   );
  // }

  // Widget _buildDatePicker(BuildContext context) {
  //   showCupertinoModalPopup<void>(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return _buildBottomPicker(
  //         CupertinoDatePicker(
  //           mode: CupertinoDatePickerMode.date,
  //           initialDateTime: date,
  //           onDateTimeChanged: (DateTime newDateTime) {
  //             if (mounted) {
  //               setState(() => date = newDateTime);
  //             }
  //           },
  //         ),
  //       );
  //     },
  //   );
  // }
  
  // Widget _buildTimePicker(BuildContext context) {
  //   showCupertinoModalPopup<void>(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return _buildBottomPicker(
  //         CupertinoDatePicker(
  //           mode: CupertinoDatePickerMode.time,
  //           initialDateTime: time,
  //           onDateTimeChanged: (DateTime newDateTime) {
  //             if (mounted) {
  //               setState(() => time = newDateTime);
  //             }
  //           },
  //         ),
  //       );
  //     },
  //   );
  // }

  // Widget _buildDateAndTimePicker(BuildContext context) {
  //   showCupertinoModalPopup<void>(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return _buildBottomPicker(
  //         CupertinoDatePicker(
  //           mode: CupertinoDatePickerMode.dateAndTime,
  //           initialDateTime: dateTime,
  //           onDateTimeChanged: (DateTime newDateTime) {
  //             if (mounted) {
  //               setState(() => dateTime = newDateTime);
  //             }
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
            CodePreview.go(context, "CupertinoPicker", "lib/widgets/cupertino/LearnCupertinoPicker.dart");
          }
        )),
        resizeToAvoidBottomInset: false, //是否要调整自己的大小以避免窗口的底部插入
        child: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10),
              child: CupertinoButton(
                child: Text("Favorite Color",
                  style: TextStyle(
                      color: CupertinoColors.black
                  ),
                ),
                color: CupertinoColors.activeBlue,
                borderRadius: BorderRadius.all(Radius.circular(5)),
                pressedOpacity: 0.5,
                onPressed: (){
                  // _buildColorPicker(context);
                },
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: CupertinoButton(
                child: Text("Countdown Timer",
                  style: TextStyle(
                      color: CupertinoColors.black
                  ),
                ),
                color: CupertinoColors.activeBlue,
                borderRadius: BorderRadius.all(Radius.circular(5)),
                pressedOpacity: 0.5,
                onPressed: (){
                  // _buildCountdownTimerPicker(context);
                },
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: CupertinoButton(
                child: Text("Date",
                  style: TextStyle(
                      color: CupertinoColors.black
                  ),
                ),
                color: CupertinoColors.activeBlue,
                borderRadius: BorderRadius.all(Radius.circular(5)),
                pressedOpacity: 0.5,
                onPressed: (){
                  // _buildDatePicker(context);
                },
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: CupertinoButton(
                child: Text("Time",
                  style: TextStyle(
                      color: CupertinoColors.black
                  ),
                ),
                color: CupertinoColors.activeBlue,
                borderRadius: BorderRadius.all(Radius.circular(5)),
                pressedOpacity: 0.5,
                onPressed: (){
                  // _buildTimePicker(context);
                },
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: CupertinoButton(
                child: Text("Date and Time",
                  style: TextStyle(
                      color: CupertinoColors.black
                  ),
                ),
                color: CupertinoColors.activeBlue,
                borderRadius: BorderRadius.all(Radius.circular(5)),
                pressedOpacity: 0.5,
                onPressed: (){
                  // _buildDateAndTimePicker(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
