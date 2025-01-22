import 'package:homework2/models/ingredient.dart';
import 'package:homework2/models/profile.dart';

class FeaturedCookbook {
  final Profile author;
  final String description;
  final String description_profile;
  final String imageUrl;
  final String profileUrl;
  final String  title;
  final String steps;
  final List<Ingredient> ingredients;

  String getIngredientsString() {
    return ingredients.map((ingredient) => ingredient.toString()).join('\n');
  }

  const FeaturedCookbook({
    required this.author,
    required this.description,
    required this.description_profile,
    required this.imageUrl,
    required this.profileUrl,
    required this.title,
    required this.steps,
    required this.ingredients,
  });
}