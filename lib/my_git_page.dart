import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MyGitPage extends StatefulWidget {
  final String gitUrl;
  const MyGitPage({Key? key, required this.gitUrl}) : super(key: key);

  @override
  State<MyGitPage> createState() => _MyGitPageState();
}

class _MyGitPageState extends State<MyGitPage> {

  @override
  void initState() {
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(borderRadius: BorderRadius.circular(8), child: Image.asset("assets/images/andima.jpg", height: 40, width: 40,)),
            SizedBox(width: 10,),
            Text("Udoh Andima Solomon", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),),
          ],
        ),
        actions: const [
          SizedBox(width: 40,)
        ],
      ),
      body: WebView(
        initialUrl: widget.gitUrl, // URL to open in the WebView
        javascriptMode: JavascriptMode.unrestricted, // Enable JavaScript
      ),
    );
  }
}