import 'package:beginner/screens/const.dart';
import 'package:flutter_svg/flutter_svg.dart';
import "../doctors screen/doctors_card.dart";
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  var title;
  var imageUrl;
  var bgColor;
  var docname;

  CategoryCard(
      {required this.title,
      required this.imageUrl,
      required this.bgColor,
      required this.docname});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DoctorsCard(
              title: title,
              doctorname: docname,
            ),
          ),
        ),
        child: Stack(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  20,
                ),
              ),
              child: Container(
                width: 140,
                height: 160,
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 16,
                ),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    title,
                    style: TextStyle(
                        color: kTitleTextColor, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Positioned(
              right: 0,
              child: Container(
                height: 84,
                width: 84,
                decoration: BoxDecoration(
                  color: bgColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(
                  imageUrl,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
