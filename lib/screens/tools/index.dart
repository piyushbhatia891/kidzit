import 'package:flutter/material.dart';
import 'package:kidzit_app/models/tool_model.dart';
import 'package:kidzit_app/shared/routes.dart';

class ToolsPage extends StatelessWidget {
  List<ToolModel> model = [
    new ToolModel(
        imageUrl: "assets/yoga.png", type: "Yoga", routeUrl: Routes.YOGA),
    new ToolModel(
        imageUrl: "assets/lady.png", type: "Safe Tips", routeUrl: Routes.YOGA),
    new ToolModel(
        imageUrl: "assets/water.png",
        type: "Glass Counter",
        routeUrl: Routes.GLASS_DETAILS),
    new ToolModel(
        imageUrl: "assets/weight.png",
        type: "Weight",
        routeUrl: Routes.WEIGHT_DETAILS),
    new ToolModel(
        imageUrl: "assets/kick.png",
        type: "Kicks",
        routeUrl: Routes.KICK_DETAILS),
    new ToolModel(
        imageUrl: "assets/baby.png",
        type: "Names",
        routeUrl: Routes.KICK_DETAILS),
  ];
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
          appBar: AppBar(
              title: Text("Tools"),
              centerTitle: false,
              automaticallyImplyLeading: false,
              actions: [
                IconButton(
                    icon: Icon(Icons.notification_important_outlined,
                        color: Colors.white),
                    onPressed: null)
              ]),
          body: TabBarView(children: [
            Center(
              child: Container(
                  margin: const EdgeInsets.only(top: 20.0),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.8,
                  child: GridView.builder(
                      padding: const EdgeInsets.all(10.0),
                      itemCount: 6,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 1.2,
                          crossAxisSpacing: 10.0,
                          mainAxisSpacing: 30.0),
                      itemBuilder: (context, int index) {
                        return InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, model[index].routeUrl);
                          },
                          child: Container(
                            //margin: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Column(
                              children: [
                                Container(
                                    padding: const EdgeInsets.all(15.0),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                        border: Border.all(color: Colors.pink),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.black54,
                                              blurRadius: 15.0,
                                              spreadRadius: 2.0)
                                        ]),
                                    child: CircleAvatar(
                                      radius: 35,
                                      backgroundColor: Colors.white,
                                      child: Image.asset(
                                        model[index].imageUrl,
                                        fit: BoxFit.fill,
                                      ),
                                    )),
                                Expanded(child: SizedBox()),
                                Container(
                                  child: Text(
                                    model[index].type,
                                    textAlign: TextAlign.center,
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      })),
            )
          ])),
    );
  }
}
