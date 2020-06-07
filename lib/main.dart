
import 'package:edamam_foods/trial/views/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(debugShowCheckedModeBanner: false,
title: 'Edamam foods',
theme: ThemeData(
  //  primaryColor: Color(0xFFffffff),
  primaryColor: Colors.grey
          //primaryColorDark: Color(0xffffff),
          // accentColor: Color(0xFF761322),
          // indicatorColor: Colors.black,
          // highlightColor: Colors.black,
          // bottomAppBarColor: Colors.black
          ),

      // routes: <String, WidgetBuilder>{
      //   HOME_PAGE: (BuildContext context) => Homepage()
      // },
      home: Home(),
),
);