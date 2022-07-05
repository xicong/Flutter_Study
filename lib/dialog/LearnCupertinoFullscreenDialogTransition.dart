import '../comm/page/CodePreview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../utils/title_utils.dart';

class LearnCupertinoFullscreenDialogTransition extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LearnCupertinoFullscreenDialogTransition();
  }
}

class _LearnCupertinoFullscreenDialogTransition
    extends State<LearnCupertinoFullscreenDialogTransition>
    with TickerProviderStateMixin {
  late AnimationController _controller;

  void _initController() {
    _controller = AnimationController(
      duration: Duration(milliseconds: 5000),
      vsync: this,
    );
  }

  @override
  void initState() {
    super.initState();
    _initController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: CommTitle.setMaterialAppBar(
              context, "CupertinoFullscreenDialogTransition",
              Callback(codeOnTap: () {
            CodePreview.go(context, "CupertinoFullscreenDialogTransition",
                "lib/dialog/LearnCupertinoFullscreenDialogTransition.dart");
          })),
//           body: ListView(
//             children: <Widget>[
//               GestureDetector(
//                 onTap: () {
//                   showDialog(
//                       context: context,
//                       barrierDismissible: true, //点击外面是否可以关闭
//                       builder: (BuildContext context) {
//                         return CupertinoFullscreenDialogTransition(
//                           child: Scaffold(
//                               body: Image.network(
//                                   "https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3104782390,412364191&fm=26&gp=0.jpg")),
//                           // primaryRouteAnimation: null,
//                           // secondaryRouteAnimation: null,
//                           linearTransition: true,
// //                          animation: Tween<double>(  // 该参数必须传，不然会报错
// //                            begin: 0.0,
// //                            end: 1.0,
// //                          ).animate(
// //                            CurvedAnimation(
// //                              parent: _controller,
// //                              curve: Curves.linear,
// //                            ),
// //                          ),
//                         );
//                       });
//                 },
//                 child: Container(
//                   alignment: Alignment.center,
//                   child: Text(
//                     "CupertinoFullscreenDialogTransition",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 15,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   decoration: BoxDecoration(
//                     color: Colors.blue,
//                     borderRadius: BorderRadius.all(Radius.circular(10)),
//                   ),
//                   margin: EdgeInsets.all(15),
//                   padding: EdgeInsets.all(15),
//                 ),
//               ),
//             ],
//           )
    ),
    );
  }
}
