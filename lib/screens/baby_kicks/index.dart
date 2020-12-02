import 'package:flutter/material.dart';
import 'package:kidzit_app/shared/routes.dart';

class BabyKicksPage extends StatefulWidget{
  BabyKicksPageState createState()=>BabyKicksPageState();
}
class BabyKicksPageState extends State<BabyKicksPage>{
  Widget build(BuildContext context){
    return DefaultTabController(
      length: 1,
      child: Scaffold(
          appBar: AppBar(
              bottom: TabBar(
                tabs: [
                  Container(
                      width: MediaQuery.of(context).size.width*0.9,
                      padding:const EdgeInsets.all(10.0),
                      child: Text("Kicks Counter",style: TextStyle(fontSize: 16.0),textAlign: TextAlign.center,))
                ],
              ),
              actions: [
                IconButton(
                    icon: Icon(Icons.notification_important_outlined,
                        color: Colors.black),
                    onPressed: null)
              ]
          ),
          body:Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                width: MediaQuery.of(context).size.width,
                child: Text("Baby Kicks",style: TextStyle(color: Colors.pink,fontSize: 16.0,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                width: MediaQuery.of(context).size.width*0.6,
                height: MediaQuery.of(context).size.height*0.2,
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,color: Colors.white,border: Border.all(color: Colors.grey)),
                      child:Container(
                    width: MediaQuery.of(context).size.width*0.5,
                    height: MediaQuery.of(context).size.height*0.2,
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: [Color(0xFFFC44B3),Color(0xFFEA2662)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter

                      ),

                    ),
                    child: Image.asset("assets/baby_kicks.png",fit: BoxFit.fitHeight,color: Colors.white,),
                      ))
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Duration",style: TextStyle(color: Colors.black54),),
                        Text("00:12",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),textAlign: TextAlign.left,)
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Kicks",style: TextStyle(color: Colors.black54),),
                        Text("6",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),textAlign: TextAlign.left,)
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height*0.1,

                    ),
                    Positioned(top:MediaQuery.of(context).size.height*0.03,child: Container(
                      color: Colors.grey,
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height*0.001,
                    ),),
                    Positioned(top: 0,left: MediaQuery.of(context).size.width*0.4,
                      child: RaisedButton(
                        onPressed: (){
                          Navigator.pushNamed(context, Routes.WEIGHT_ADD);
                        },
                        color: Colors.pink,
                        shape: StadiumBorder(),
                        child: Center(child: Text("Start",style: TextStyle(color: Colors.white),),),
                      ),)
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width*0.8,
                //height: MediaQuery.of(context).size.height*0.15,
                //margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10.0),
                      width: MediaQuery.of(context).size.width,
                      child: Text("Records",style: TextStyle(color: Colors.pink,fontSize: 16.0,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Text("TODAY",style: TextStyle(color: Colors.black,fontSize: 16.0),textAlign: TextAlign.center,),),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Start Time",style: TextStyle(color: Colors.black54),),
                              Text("09:08 PM",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),textAlign: TextAlign.left,)
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Duration",style: TextStyle(color: Colors.black54),),
                              Text("00:12",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),textAlign: TextAlign.left,)
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Kicks",style: TextStyle(color: Colors.black54),),
                              Text("5",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),textAlign: TextAlign.left,)
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black54,
                                    blurRadius: 10.0,
                                    spreadRadius: 1.0)
                              ],
                            ),
                            child: InkWell(
                              //onTap: (),
                                child: Icon(Icons.delete,color: Colors.pink,)),
                          ),


                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Text("YESTERDAY",style: TextStyle(color: Colors.black,fontSize: 16.0),textAlign: TextAlign.center,),),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Start Time",style: TextStyle(color: Colors.black54),),
                              Text("09:08 PM",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),textAlign: TextAlign.left,)
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Duration",style: TextStyle(color: Colors.black54),),
                              Text("00:12",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),textAlign: TextAlign.left,)
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Kicks",style: TextStyle(color: Colors.black54),),
                              Text("5",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),textAlign: TextAlign.left,)
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black54,
                                    blurRadius: 10.0,
                                    spreadRadius: 1.0)
                              ],
                            ),
                            child: InkWell(
                              //onTap: (),
                                child: Icon(Icons.delete,color: Colors.pink,)),
                          ),


                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(child: SizedBox()),
            ],
          )
      ),
    );
  }
}