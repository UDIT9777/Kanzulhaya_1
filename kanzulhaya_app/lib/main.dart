import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/services.dart';

void main(){
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.black,
  ));
  runApp(MyApp());}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:  Scaffold(
          body:
          SafeArea(
            child: WebViewLoad(),
          ),
        )

    );
  }
}

class WebViewLoad extends StatefulWidget {

  WebViewLoadUI createState() => WebViewLoadUI();

}

class WebViewLoadUI extends State<WebViewLoad>{

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:
      SafeArea(
        child: WebView(
          initialUrl: 'https://kanzulhaya.com/',
          javascriptMode: JavascriptMode.unrestricted,

        ),
      ),
    );

  }
}


