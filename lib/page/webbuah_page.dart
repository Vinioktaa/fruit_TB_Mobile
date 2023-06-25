import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class WebBuahPage extends StatelessWidget {
  String? WebBuah;
  WebBuahPage({Key ? key,this.WebBuah}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(url: WebBuah!);
  }
}