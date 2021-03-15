import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kidzit_app/controller/header_calculator/header_controller.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../home/widgets/web_view_home.dart';

WebViewController controllerGlobal;

class HomeWebPage extends StatefulWidget {
  HomeWebPageState createState() => HomeWebPageState();
}

class HomeWebPageState extends State<HomeWebPage> {
  WebViewController webView;

  final HeaderController _headerController = Get.find();

  bool isLoading = true;
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Obx(
            () => Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.50,
                        color: Colors.white,
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
                        top: 10.0,
                        left: 20.0,
                        right: 20.0,
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          //height: MediaQuery.of(context).size.height/6,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                        "${_headerController.list.length > 0 ? _headerController.list[0].result.week : "Loading"}",
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
                                    ],
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          "${_headerController.list.length > 0 ? _headerController.list[0].result.contraction : "Loading"}",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20.0),
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          "${_headerController.list.length > 0 ? _headerController.list[0].result.totalKicks : "Loading"}",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20.0),
                                        ),
                                        Text(
                                          "KICKS",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        Text(
                                          "TODAY",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height * 0.38,
                        left: MediaQuery.of(context).size.width * 0.4,
                        right: MediaQuery.of(context).size.width * 0.4,
                        child: Container(
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black54,
                                    blurRadius: 15.0,
                                    spreadRadius: 2.0)
                              ]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset("assets/embryo.png"),
                              Text(
                                "25",
                                style: TextStyle(color: Colors.black54),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                WebHomeView(url: Get.parameters["url"]),
              ],
            ),
          ),
        ),
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
