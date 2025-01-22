import 'package:homework2/models/ingredient.dart';
import 'package:homework2/models/profile.dart';

class Recipe {
  final String id;
  final String title;
  final String imageUrl;
  final String description;
  final Profile author;
  final String steps;
  final List<Ingredient> ingredients;
  final String duration;
  final String difficulty;
  final double rating;

  String getIngredientsString() {
    return ingredients.map((ingredient) => ingredient.toString()).join('\n');
  }

  Recipe({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.description,
    required this.author,
    required this.steps,
    required this.ingredients,
    required this.duration,
    required this.difficulty,
    required this.rating,
  });
}