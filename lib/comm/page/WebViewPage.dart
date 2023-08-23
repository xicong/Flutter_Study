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
  String title = "title";
  late WebViewController webViewController;
  @override
  void initState() {
    webViewController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse('https://www.csdn.net/'));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: CommTitle.setMaterialAppBar(context, title, null),
          body: WebViewWidget(controller: webViewController),
      ),
    );
  }
}
