import 'package:flutter/material.dart';
import 'package:kidzit_app/shared/routes.dart';
import 'package:kidzit_app/shared/widgets/charts/simple_table/index.dart';

class WeightPage extends StatelessWidget{
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
                      child: Text("Weight Counter",style: TextStyle(fontSize: 16.0),textAlign: TextAlign.center,))
                ],
              ),
              actions: [
                IconButton(
                    icon: Icon(Icons.notification_important_outlined,
                        color: Colors.black),
                    onPressed: null)
              ]
          ),
        body:Container(
          height: MediaQuery.of(context).size.height*0.8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: SizedBox()),
              Container(
                width: MediaQuery.of(context).size.width*0.9,
                height: MediaQuery.of(context).size.height*0.2,
                padding: const EdgeInsets.all(10.0),
                child: SimpleBarChart.withSampleData(),
              ),
              Container(
                child: Center(
                  child: Text("Sunday, September 20",style: TextStyle(color: Colors.black,fontSize: 14.0),textAlign: TextAlign.center,),
                ),
              ),
              Container(
                child: Center(
                  child: Text("Week 2 Day1",style: TextStyle(color: Colors.black,fontSize: 12.0),textAlign: TextAlign.center,),
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
                        child: Center(child: Text("Add Entry",style: TextStyle(color: Colors.white),),),
                    ),)
                  ],
                ),
              ),

              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width*0.8,
                  height: MediaQuery.of(context).size.height*0.15,
                  margin: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(child: Text("In Numbers",style: TextStyle(color: Colors.pink)),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Start Weight",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                          Text("Start Weight",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                          Text("Start Weight",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Week1",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                          Text("Week2",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                          Text("Week3",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("50.1 kg",style: TextStyle(color: Colors.pink,fontSize: 18.0,fontWeight: FontWeight.bold),),
                          Text("50.1 kg",style: TextStyle(color: Colors.pink,fontSize: 18.0,fontWeight: FontWeight.bold),),
                          Text("50.1 kg",style: TextStyle(color: Colors.pink,fontSize: 18.0,fontWeight: FontWeight.bold),),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, Routes.WEIGHT_LIST);
                },
                child: Container(
                  width: MediaQuery.of(context).size.width*0.8,
                  height: MediaQuery.of(context).size.height*0.05,
                  margin: const EdgeInsets.symmetric(vertical: 10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black54,
                          blurRadius: 15.0,
                          spreadRadius: 2.0)
                    ],
                  ),
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(child: Text("List All Entries")),
                      Icon(Icons.arrow_forward)

                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}