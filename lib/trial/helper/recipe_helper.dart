import 'dart:convert';

import 'package:edamam_foods/trial/models/recipe_model.dart';
import 'package:http/http.dart' as http;

class Edamam {
  List<Hits> hits = new List();

  getRecipe() async {
    await http.get( "https://api.edamam.com/search?q=chicken&app_id=9b123a2d&app_key=76eb8e1d5e2a84e678f4c8d61fd75a14").then((value) {

      Map<String, dynamic> jsonData = jsonDecode(value.body);
      jsonData['hits'].forEach((element) {
        Hits hitsModel = new Hits();
        hitsModel = Hits.fromMap(element);
        hits.add(hitsModel);
      });
    });
  }
  

  // Future<void> getRecipe() async {
  //   String url =
  //       "https://api.edamam.com/search?q=chicken&app_id=9b123a2d&app_key=76eb8e1d5e2a84e678f4c8d61fd75a14";

  //   var response = await http.get(url);
  //   var jsonData = jsonDecode(response.body);
  //   // if (jsonData['hits'] != null) {
  //   //   //hits = new List<Hits>();
  //   //   jsonData['hits'].forEach((element) {
  //   //     Hits hitsModel = Hits(recipe: element['recipe']);
  //   //     hits.add(hitsModel);
  //   //   });
  //    if (jsonData['recipe'] !=null) {
  //      jsonData['recipe'].forEach((element) {
  //       Recipe recipeModel = Recipe(
  //         image: element['image'],
  //         label: element['label'],
  //         calories: element['calories'],
  //       );
  //       recipe.add(recipeModel);
  //     });
  //   }
  //   }
    
  }
//}
