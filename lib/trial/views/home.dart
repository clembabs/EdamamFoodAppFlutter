import 'dart:convert';

import 'package:edamam_foods/trial/models/recipe_model.dart';
import 'package:edamam_foods/trial/views/background.dart';
import 'package:edamam_foods/trial/views/blogtile.dart';
import 'package:edamam_foods/trial/views/page_content.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // List<Hits> hits = List<Hits>();
  List<Hits> hits = new List();

  bool _loading = true;

  getRecipe() async {
    await http
        .get(
            "https://api.edamam.com/search?q=chicken&app_id=9b123a2d&app_key=76eb8e1d5e2a84e678f4c8d61fd75a14")
        .then((value) {
      Map<String, dynamic> jsonData = jsonDecode(value.body);
      jsonData['hits'].forEach((element) {
        Hits hitsModel = new Hits();
        hitsModel = Hits.fromMap(element);
        hits.add(hitsModel);
      });
      setState(() {
        _loading = false;
      });
    });
  }

  @override
  void initState() {
    getRecipe();
    super.initState();
  }

// @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     getRecipe();
//   }

  // getRecipe() async {
  //   Edamam edamamClass = Edamam();
  //   await edamamClass.getRecipe();
  //   hit = edamamClass.hits;
  //   setState(() {
  //     _loading=false;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //  appBar: AppBar(
        //   title: Row(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: <Widget>[
        //       Text('Edamam'),
        //       Text('Foods', style: TextStyle(color: Colors.red))
        //     ],
        //   ),
        //   elevation: 0.0,
        //   centerTitle: true,
        // ),

        body: _loading
            ? Center(
                child: Container(child: CircularProgressIndicator()),
              )
            : SafeArea(
                child: SingleChildScrollView(
                  child: Container(
                      child: Column(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Background(
                            screenHeight: MediaQuery.of(context).size.height,
                          ),
                          Content(),
                        ],
                      ),
                      ListView.builder(
                          itemCount: hits.length,
                          shrinkWrap: true,
                          physics: ClampingScrollPhysics(),
                          itemBuilder: (context, index) {
                            return BlogTile(
                              image: hits[index].recipe.image,
                              label: hits[index].recipe.label,
                              source: hits[index].recipe.source,
                              calories: hits[index].recipe.calories,
                            );
                          }),
                    ],
                  )),
                ),
              ));
  }
}

// class BlogTile extends StatelessWidget {
//   final String image, label;
//   final double calories;

//   const BlogTile(
//       {Key key,
//       @required this.image,
//       @required this.label,
//       @required this.calories,})
//       : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {

//       },
//           child: Container(
//         margin: EdgeInsets.only(bottom: 16),
//         child: Column(children: <Widget>[
//           ClipRRect(
//             borderRadius: BorderRadius.circular(6),
//             child: Image.network(image) == null ? Image.asset('assets/image.png') : Image.network(image)),
//            SizedBox(height: 8),
//           Text(
//             label,
//             style: TextStyle(fontSize: 18, color: Colors.black87, fontWeight: FontWeight.w500),
//           ),
//           SizedBox(height: 8),
//           Text(calories.toString() == null ? "calories" : calories.toString(),
//             style: TextStyle(color: Colors.black54),)
//         ]),
//       ),
//     );
//   }
// }
