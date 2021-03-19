import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewWidget extends StatelessWidget {
  String url;
  WebViewWidget(String url) {
    this.url = url;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Expanded(
            child: WebView(
          initialUrl: this.url,
          javascriptMode: JavascriptMode.unrestricted,
        ))
      ]),
    );
  }
}
