import 'ingredient.dart';

class Recipe {
  final String id;
  final String title;
  final String subtitle;
  final List<String> cookingSteps;
  final List<Ingredient> ingredients;
  final List<String> dietaryRestrictions;
  final String country;
  final String calories;
  final String fat;
  final String protein;
  final String salt;
  final String sugar;
  final String image;

  Recipe(
      this.id,
      this.title,
      this.subtitle,
      this.cookingSteps,
      this.ingredients,
      this.dietaryRestrictions,
      this.country,
      this.calories,
      this.fat,
      this.protein,
      this.salt,
      this.sugar,
      this.image);

  Recipe.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        subtitle = json['subtitle'],
        cookingSteps = json['cookingSteps'],
        ingredients =
            (json['ingredients'] as List) // TODO setup Firebase correctly
                .map((ingredient) => Ingredient.fromJson(ingredient))
                .toList(),
        dietaryRestrictions = json['dietaryRestrictions'],
        country = json['country'],
        calories = json['calories'],
        fat = json['fat'],
        protein = json['protein'],
        salt = json['salt'],
        sugar = json['sugar'],
        image = json['image'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'subtitle': subtitle,
        'cookingSteps': cookingSteps,
        'ingredients': ingredients,
        'dietaryRestrictions': dietaryRestrictions,
        'country': country,
        'calories': calories,
        'fat': fat,
        'protein': protein,
        'salt': salt,
        'sugar': sugar,
        'image': image
      };
}
