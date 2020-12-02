import 'package:flutter/material.dart';
import 'package:kidzit_app/shared/routes.dart';

class EditWeightPage extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
          title: Text("Your Weight"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10.0),
        children: [
          Container(
            margin: const EdgeInsets.all(10.0),
            child: Text("Specify your weight",style: TextStyle(color: Colors.pink),),
          ),
          Container(
            width: MediaQuery.of(context).size.width*0.8,
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.black54,
                    blurRadius: 5.0,
                    spreadRadius: 1.0,
                offset: Offset(0.0,0.75))
              ],
            ),
            child: Column(
              children: [TextFormField(
                initialValue: "20th Sep 2020",
              ),
                TextFormField(
                  initialValue: "58Kg",
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    RaisedButton(

                      onPressed: (){
                        Navigator.pushNamed(context, Routes.WEIGHT_LIST);
                      },
                      shape: StadiumBorder(),
                      color: Colors.pink,
                      textColor: Colors.white,
                      child: Center(child: Text("Save"),),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}