import 'package:beginner/screens/artical_screen/artical_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ArticalCard extends StatelessWidget {
  String title;
  String description;
  Color colorname;
  var image;
  ArticalCard({
    required this.colorname,
    required this.title,
    required this.description,
    required this.image,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Card(
            color: colorname,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                20,
              ),
            ),
            child: Container(
              height: 180,
              width: 330,
              padding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 16,
              ),
              child: InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ArticalScreen(title, description, image))),
                child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        child: Text(
                          description,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              overflow: TextOverflow.ellipsis),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          // Positioned(
          //   right: 0,
          //   bottom: 0,
          //   child: Container(
          //     height: 100,
          //     width: 100,
          //     child: IconButton(
          //       icon: Icon(
          //         Icons.arrow_forward,
          //         color: Colors.white,
          //       ),
          //       onPressed: () {
          //         Navigator.push(
          //           context,
          //           MaterialPageRoute(
          //               builder: (context) =>
          //                   ArticalScreen(title, description, image)),
          //         );
          //       },
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
