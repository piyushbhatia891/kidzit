import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/platform_interface.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebHomeView extends StatefulWidget {
  final String url;
  WebHomeView({this.url});
  WebHomeViewState createState() => WebHomeViewState();
}

class WebHomeViewState extends State<WebHomeView> {
  bool isLoading = true;
  WebViewController webView;
  Future<bool> _onBack() async {
    bool goBack;
    var value = await webView.canGoBack(); // check webview can go back
    if (value) {
      webView.goBack(); // perform webview back operation
      return false;
    } else {
      await showDialog(
        context: context,
        builder: (context) => new AlertDialog(
          title:
              new Text('Confirmation ', style: TextStyle(color: Colors.purple)),
          // Are you sure?
          content: new Text('Do you want exit app ? '),
          // Do you want to go back?
          actions: <Widget>[
            new FlatButton(
              onPressed: () {
                Navigator.of(context).pop(false);
                setState(() {
                  exit(0);
                });
              },
              child: new Text('Yes'), // No
            ),
            new FlatButton(
              onPressed: () {
                setState(() {
                  goBack = true;
                });
              },
              child: new Text('No'), // Yes
            ),
          ],
        ),
      );
      if (goBack) Navigator.pop(context); // If user press Yes pop the page
      return goBack;
    }
  }

  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints:
          BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
      child: WebView(
        /*gestureRecognizers: {
          Factory<VerticalDragGestureRecognizer>(
              () => VerticalDragGestureRecognizer()..onUpdate = (_) {})
        },*/
        onWebViewCreated: (WebViewController controller) {
          webView = controller;
        },
        initialUrl: widget.url,
        javascriptMode: JavascriptMode.unrestricted,
        onPageFinished: (finish) {
          setState(() {
            isLoading = false;
          });
        },
      ),
    );
    /*isLoading
          ? Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(),
                  Text("Loading Details")
                ],
              ),
            )
          : Container()*/
  }
}
