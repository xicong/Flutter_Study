import 'package:flutter/material.dart';
import 'package:Flutter_Study/comm/CommTitle.dart';
import 'package:progress_dialog/progress_dialog.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget{
  
  String url;
  WebViewPage({this.url});
  
  static go(BuildContext context,String title,String url){
    Navigator.push(context,
        new MaterialPageRoute(builder: (BuildContext context) {
          return new WebViewPage(
            url: url,
          );
        }));
  }
  
  @override
  State<StatefulWidget> createState() {
    return new _WebViewPage();
  }
}
class _WebViewPage extends State<WebViewPage>{

  WebViewController _controller;// web控制器
  String title = "title";
  ProgressDialog progressDialog;
  
  @override
  void initState() {
    super.initState();
    progressDialog = ProgressDialog(context);
    progressDialog.style(
      message: "数据加载中...",
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home:  new Scaffold(
        appBar: CommTitle.setMaterialAppBar(context, title, null),
        body: new WebView(
          initialUrl: widget.url,
          javascriptMode: JavascriptMode.unrestricted,  //js执行模式是否允许js执行
          onWebViewCreated: (controller){
            _controller=controller;
            progressDialog.show();
          },
          onPageFinished: (url){
            _controller.evaluateJavascript("document.title").then((result){
              setState(() {
                title = result;
              });
              progressDialog.hide();
            });
          },
        ),
      ),
    );
  }
}