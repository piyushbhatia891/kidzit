import 'dart:async';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

WebViewController controllerGlobal;

class HomeWebPage extends StatefulWidget {
  HomeWebPageState createState() => HomeWebPageState();
}

class HomeWebPageState extends State<HomeWebPage> {
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

  bool isLoading = true;
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _onBack(),
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Color(0xFFFA2A88),
            title: Text(
              "Webview App",
              style: TextStyle(color: Colors.white),
            )),
        body: Stack(
          children: <Widget>[
            WebView(
              onWebViewCreated: (WebViewController controller) {
                webView = controller;
              },
              initialUrl: Get.parameters["url"],
              javascriptMode: JavascriptMode.unrestricted,
              onPageFinished: (finish) {
                setState(() {
                  isLoading = false;
                });
              },
            ),
            isLoading
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
                : Container(),
          ],
        ),
      ),
    );

    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.45,
                //color: Colors.white,
              ),
              Positioned(
                top: 0.0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2,
                  child: Image.asset(
                    "assets/circle.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 0.0,
                left: 20.0,
                right: 20.0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 4,
                  child: Image.asset(
                    "assets/sonography.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 20.0,
                left: 20.0,
                right: 20.0,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  //height: MediaQuery.of(context).size.height/6,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              icon: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                                size: 18.0,
                              ),
                              onPressed: () => Navigator.pop(context)),
                          IconButton(
                              icon: Icon(
                                Icons.notification_important_outlined,
                                color: Colors.white,
                                size: 18.0,
                              ),
                              onPressed: null)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Text(
                                "2",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30.0),
                              ),
                              Text(
                                "Weeks",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30.0),
                              ),
                              Text(
                                "Sun 13 September - Sat 19 September",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16.0),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.30,
                left: MediaQuery.of(context).size.width * 0.4,
                right: MediaQuery.of(context).size.width * 0.4,
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color(0xFFFFE5ED),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black54,
                            blurRadius: 15.0,
                            spreadRadius: 2.0)
                      ]),
                  child: Image.asset("assets/embryo.png"),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.25,
                left: 20.0,
                right: 20.0,
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "2",
                            style:
                                TextStyle(color: Colors.white, fontSize: 24.0),
                          ),
                          Text(
                            "PER HOUR",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "Contraction",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "2",
                            style:
                                TextStyle(color: Colors.white, fontSize: 24.0),
                          ),
                          Text(
                            "PER HOUR",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "Contraction",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            margin: const EdgeInsets.symmetric(horizontal: 10.0),
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Fetal Detail",
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.pink, fontSize: 16.0),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: Colors.pink),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/fetal_home.png"))),
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Dummy text is text that is used in the publishing industry or by web designers to occupy the space which will later be filled with 'real' content. ",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Expanded(child: SizedBox())
              ],
            ),
          )
        ],
      ),
    );
  }
}

class NavigationControls extends StatelessWidget {
  const NavigationControls(this._webViewControllerFuture)
      : assert(_webViewControllerFuture != null);

  final Future<WebViewController> _webViewControllerFuture;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<WebViewController>(
      future: _webViewControllerFuture,
      builder:
          (BuildContext context, AsyncSnapshot<WebViewController> snapshot) {
        final bool webViewReady =
            snapshot.connectionState == ConnectionState.done;
        final WebViewController controller = snapshot.data;
        controllerGlobal = controller;

        return Row(
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: !webViewReady
                  ? null
                  : () async {
                      if (await controller.canGoBack()) {
                        controller.goBack();
                      } else {
                        Scaffold.of(context).showSnackBar(
                          const SnackBar(content: Text("No back history item")),
                        );
                        return;
                      }
                    },
            ),
            IconButton(
              icon: const Icon(Icons.arrow_forward_ios),
              onPressed: !webViewReady
                  ? null
                  : () async {
                      if (await controller.canGoForward()) {
                        controller.goForward();
                      } else {
                        Scaffold.of(context).showSnackBar(
                          const SnackBar(
                              content: Text("No forward history item")),
                        );
                        return;
                      }
                    },
            ),
            IconButton(
              icon: const Icon(Icons.replay),
              onPressed: !webViewReady
                  ? null
                  : () {
                      controller.reload();
                    },
            ),
          ],
        );
      },
    );
  }
}
