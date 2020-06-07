
import 'package:flutter/material.dart';

class Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Icon(
                Icons.person_outline,
                color: Color(0x99FFFFFF),
                size: 30,
              ),
            ),
          ],
        ),
        SizedBox(height: 40),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.2),
          child: RichText(
            text: TextSpan(children: [
              TextSpan(
                text: 'Edamam',
                style: TextStyle(
                  fontSize: 34.0,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFFFFFFF),
                ),
              ),
              TextSpan(
                text: ' Food App',
                style: TextStyle(
                  fontSize: 38.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ]),
          ),
        )
      ],
    );
  }
}
