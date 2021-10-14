import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0.9,
            left: 0,
            child: Image.asset(
              "assets/main_top.png",
              width: size.width * 0.30,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              "assets/main_bottom.png",
              width: size.width * 0.2,
            ),
          ),
          SvgPicture.asset(
            "assets/welcome.svg",
            height: size.height * 0.7,
          ),
          child,
        ],
      ),
    );
  }
}
