import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Background extends StatelessWidget {
  final Widget child;

  const Background({
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
              "assets/login_bottom.png",
              width: size.width * 0.4,
            ),
          ),
          Positioned(
            top: 80,
            child: SvgPicture.asset(
              "assets/log.svg",
              height: size.height * 0.47,
            ),
          ),
          child,
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              "assets/main_top.png",
              width: size.width * 0.3,
            ),
          ),
        ],
      ),
    );
  }
}
