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
        ],
      ),
    );
  }
}
