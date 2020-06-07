class Hits {
  Recipe recipe;
  
    Hits({this.recipe});
    factory Hits.fromMap(Map<String, dynamic> parsedJson) {
      return Hits(
        recipe: Recipe.fromMap(parsedJson["recipe"])
      );
    }
  }
  

class Recipe {
  String label;
  String image;
  String source;
  //List<Ingredients> ingredients;
  double calories;

    Recipe({
    this.label,
    this.image,
    //this.ingredients,
    this.source,
    this.calories,
  });

  factory Recipe.fromMap(Map<String, dynamic> srcJson) {
    return Recipe(image: srcJson['image'],
    label: srcJson['label'],
    source: srcJson['source'],
    calories: srcJson['landscape']
    );
  }
}