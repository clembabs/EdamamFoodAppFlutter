import 'package:flutter/material.dart';

class Background extends StatelessWidget {
   final screenHeight;

  const Background({Key key, @required this.screenHeight}) : super(key: key);
  @override
  Widget build(BuildContext context) {
     final themeData = Theme.of(context);
      final screenWidth = MediaQuery.of(context).size.width;

    return ClipPath(
      clipper: BottomShapeClipper(),
      child: Image.asset("assets/granite_cooking_class.jpeg",
          fit: BoxFit.cover,
          width: screenWidth,
          color: Color(0x99000000),
          colorBlendMode: BlendMode.darken,),
      // child: Container(
      //   color: themeData.primaryColor,
      //   height: screenHeight * 0.4,
      // ),
    );
  }
}

class BottomShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    Offset curveStartPoint = Offset(0, size.height * 0.85);
    Offset curveEndPoint = Offset(size.width, size.height * 0.6);
    path.lineTo(curveStartPoint.dx, curveStartPoint.dy);
    path.quadraticBezierTo(size.width/2, size.height, curveEndPoint.dx, curveStartPoint.dy);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
  
}