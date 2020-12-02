import 'package:flutter/material.dart';

class OnbordingData extends StatefulWidget {
  final imagePath;
  final title;
  final desc;

  OnbordingData({this.imagePath, this.title, this.desc});

  @override
  _OnbordingDataState createState() =>
      _OnbordingDataState(this.imagePath, this.title, this.desc);
}

class _OnbordingDataState extends State<OnbordingData> {
  final imagePath;
  final title;
  final desc;
  _OnbordingDataState(this.imagePath, this.title, this.desc);

  @override
  Widget build(BuildContext context) {
    return Container(

      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image(
            image: AssetImage(imagePath),
          ),

          Expanded(
            child: SizedBox(

            ),
          ),

          Text(
            title,
            //softWrap: true,
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white, fontSize: 20),
          ),
          SizedBox(
            height: 12.0,
          ),

        ],
      ),
    );
  }
}
