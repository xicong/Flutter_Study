import 'package:flutter/material.dart';
import 'package:flutter_study/utils/title_utils.dart';

import '../comm/page/CodePreview.dart';
class LearnSlider extends StatefulWidget{
  const LearnSlider({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _LearnSlider();
  }
}
class _LearnSlider extends State<LearnSlider>{
  double progressValue=0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommTitle.setMaterialAppBar(context, "Slider", Callback(codeOnTap: (){
        CodePreview.go(context, "Slider", "lib/widgets/LearnSlider.dart");
      })),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: 300.0,
            child:Slider(
              value: progressValue,//实际进度的位置
              inactiveColor: Colors.black12,//进度中不活动部分的颜色
              label: '$progressValue',
              min: 0.0,
              max: 100.0,
              divisions: 1000,
              activeColor: Colors.blue,//进度中活动部分的颜色
              onChangeStart: (double){
                print('888888888888onChangeStart888888888888888');
              },
              onChangeEnd:(double){
                print('9999999999999999onChangeEnd99999999999999999999');
              } ,
              onChanged: (double){
                setState(() {
                  progressValue=double.roundToDouble();
                });
              },
            ),
          ),
          SliderTheme(
              data: SliderTheme.of(context).copyWith(
//                activeTickMarkColor:Colors.yellowAccent,
                activeTrackColor: Colors.yellowAccent,//实际进度的颜色
//                inactiveTickMarkColor:Colors.black
                thumbColor: Colors.black,//滑块中心的颜色
                inactiveTrackColor:Colors.red,//默认进度条的颜色
                valueIndicatorColor: Colors.blue,//提示进度的气派的背景色
                valueIndicatorTextStyle: const TextStyle(//提示气泡里面文字的样式
                  color: Colors.white,
                ),
                inactiveTickMarkColor:Colors.blue,//divisions对进度线分割后 断续线中间间隔的颜色
                overlayColor: Colors.pink,//滑块边缘颜色
              ),
              child: Container(
                width: 340.0,
                margin: const EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
                child: Row(
                  children: <Widget>[
                    const Text('0.0'),
                    Expanded(
                      flex: 1,
                        child: Slider(
                          value: progressValue,
                          label: '$progressValue',
                          divisions: 10,
                          onChanged: (double){
                            setState(() {
                              progressValue=double.floorToDouble();//转化成double
                            });
                          },
                          min: 0.0,
                          max: 100.0,
                        ),
                    ),
                    const Text('100.0'),
                  ],
                ),
              ),
          ),
        ],
      ),
    );
  }
}