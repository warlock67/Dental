import 'package:beginner/screens/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ArticalScreen extends StatelessWidget {
  var title;
  var description;
  var image;
  ArticalScreen(this.title, this.description, this.image);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      backgroundColor: kBackgroundColor,
      body: Column(
        children: [
          Image.asset(
            image,
          ),
        ],
      ),
    );
  }
}
