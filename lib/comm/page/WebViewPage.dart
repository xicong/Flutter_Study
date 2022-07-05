import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../../utils/title_utils.dart';

class WebViewPage extends StatefulWidget {
  String url;
  WebViewPage({Key? key, required this.url}) : super(key: key);
  static go(BuildContext context, String title, String url) {
    Navigator.push(context,
        MaterialPageRoute(builder: (BuildContext context) {
      return WebViewPage(
        url: url,
      );
    }));
  }

  @override
  State<StatefulWidget> createState() {
    return _WebViewPage();
  }
}

class _WebViewPage extends State<WebViewPage> {
  late WebViewController _controller; // web控制器
  String title = "title";
  // late ProgressDialog progressDialog;
  @override
  void initState() {
    super.initState();
    // progressDialog = ProgressDialog(context);
    // progressDialog.style(
    //   message: "数据加载中...",
    // );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: CommTitle.setMaterialAppBar(context, title, null),
        body: WebView(
          initialUrl: widget.url,
          javascriptMode: JavascriptMode.unrestricted, //js执行模式是否允许js执行
          onWebViewCreated: (controller) {
            _controller = controller;
            // progressDialog.show();
          },
          onPageFinished: (url) {
            _controller.evaluateJavascript("document.title").then((result) {
              setState(() {
                title = result;
              });
              // progressDialog.hide();
            });
          },
        ),
      ),
    );
  }
}
