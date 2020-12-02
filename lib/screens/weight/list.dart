import 'package:flutter/material.dart';
//TODO
class WeightListPage extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Weights"),
      ),
      body: ListView.builder(itemCount:2,itemBuilder: (context,int index){
        return Container(
          width: MediaQuery.of(context).size.width*0.9,
          padding: const EdgeInsets.all(10.0),
          margin: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black54,
                  blurRadius: 10.0,
                  spreadRadius: 1.0)
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Column(
              children: [
                Text("Week1",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                Text("20th Sep 2020",style: TextStyle(color: Colors.black)),

              ],
            ),
            Column(
              children: [
                Text("58.3Kg",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                Text("58.5 - 70kg",style: TextStyle(color: Colors.black)),

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
                  child: Icon(Icons.edit,color: Colors.pink,)),
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
              child: Icon(Icons.delete,color: Colors.pink,),
            )
          ],),
        );
      },padding: const EdgeInsets.all(10.0),),
    );
  }
}