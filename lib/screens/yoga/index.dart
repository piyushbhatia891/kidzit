import 'dart:ui';

import 'package:flutter/material.dart';

class YogaPage extends StatelessWidget{
  Widget build(BuildContext context){
    return DefaultTabController(length: 2, child: Scaffold(
      appBar:AppBar(
        actions: [
          IconButton(icon: Icon(Icons.notification_important_outlined), onPressed: (){})
        ],
        bottom: TabBar(
          indicatorColor: Colors.pink,
          tabs: [
            Tab(text: "Yoga Poses"),
            Tab(text: "Things To Know",)
          ],
        ),
      ),
      body: TabBarView(
        children: [
      Container(
      width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height*0.8,
        child: GridView.builder(
            padding: const EdgeInsets.all(30.0),
            itemCount: 6,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.2,
                crossAxisSpacing: 20.0,
                mainAxisSpacing: 30.0),
            itemBuilder: (context, int index) {
              return Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height*0.15,
                  ),
                  Positioned(top: 0.0,
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.4,
                    height: MediaQuery.of(context).size.height*0.15,
                    //padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: Colors.pink),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black54,
                              blurRadius: 15.0,
                              spreadRadius: 2.0)
                        ],
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/anulom.png")
                        )),
                  ),),
                  Positioned(
                    top: MediaQuery.of(context).size.height*0.10,
                    left: 0,
                    width: MediaQuery.of(context).size.width*0.4,
                    height: MediaQuery.of(context).size.height*0.05,
                    // Note: without ClipRect, the blur region will be expanded to full
                    // size of the Image instead of custom size
                    child: ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
                        child: Container(
                          color: Colors.black.withOpacity(0.0),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height*0.10,
                  left:MediaQuery.of(context).size.width*0.15,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Anulom",textAlign: TextAlign.center,style: TextStyle(color: Colors.black,fontSize:16.0,fontWeight: FontWeight.bold),),
                      Text("Anulom",textAlign: TextAlign.center,style: TextStyle(color: Colors.pink,fontSize:14.0),),
                    ],
                  ),)
                ],
              );
            })),
          Container(
            width: MediaQuery.of(context).size.width*0.9,
            margin: const EdgeInsets.all(10.0),
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
            height: MediaQuery.of(context).size.height*0.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.pink),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/yoga_main.png")
                    )
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("YOGA",textAlign: TextAlign.left,style: TextStyle(color: Colors.pink,fontSize: 16.0),),
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("How yoga helps during pregnancy?",style: TextStyle(color: Colors.black,fontSize: 16.0),),
                ),Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Dummy text is text that is used in the publishing industry or by web designers to occupy the space which will later be filled with 'real' content. ",style: TextStyle(color: Colors.grey),),
                ),
                Expanded(child: SizedBox())
              ],
            ),
          )
        ],
      ),
    ));
  }
}