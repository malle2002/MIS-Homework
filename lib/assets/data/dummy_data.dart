import 'package:homework2/models/cook.dart';
import 'package:homework2/models/ingredient.dart';
import 'package:homework2/models/profile.dart';
import 'package:homework2/models/recipe.dart';

final ingredients = [
    Ingredient(quantity: "1", name: "cup flour"),
    Ingredient(quantity: "2", name: "eggs"),
    Ingredient(quantity: "1/2", name: "cup milk"),
    Ingredient(quantity: "1/4", name: "cup sugar"),
    Ingredient(quantity: "pinch", name: "of salt"),
];

final List<String> dummyCategories = [
  'Breakfast',
  'Lunch',
  'Dinner',
  'Vegan',
  'Snacks',
];

final List<Recipe> trendingRecipes = [
  Recipe(
    id: '1',
    title: 'Spaghetti Carbonara',
    imageUrl: 'assets/images/spaghetti_carbonara.jpg',
    description: 'A classic Italian pasta dish made with eggs, cheese, pancetta, and pepper.',
    duration: '30 mins',
    difficulty: 'Easy',
    rating: 4.0,
    author: profile,
    steps: "1. Preheat the oven to 350°F (175°C).\n2. Mix all ingredients together in a bowl.\n3. Pour the mixture into a baking dish.\n4. Bake for 30 minutes or until golden brown.\n5. Serve and enjoy!",
    ingredients: ingredients,
  ),
  Recipe(
    id: '2',
    title: 'Vegan Salad',
    imageUrl: 'assets/images/vegan_salad.jpg',
    description: 'A fresh and healthy salad with mixed greens, quinoa, and a lemon dressing.',
    duration: '15 mins',
    difficulty: 'Easy',
    rating: 3.5,
    author: profile,
    steps: "1. Preheat the oven to 350°F (175°C).\n2. Mix all ingredients together in a bowl.\n3. Pour the mixture into a baking dish.\n4. Bake for 30 minutes or until golden brown.\n5. Serve and enjoy!",
    ingredients: ingredients,
  ),
  Recipe(
    id: '3',
    title: 'Chicken Curry',
    imageUrl: 'assets/images/chicken_curry.jpg',
    description: 'A rich and flavorful chicken curry with a blend of spices.',
    duration: '45 mins',
    difficulty: 'Medium',
    rating: 4.2,
    author: profile,
    steps: "1. Preheat the oven to 350°F (175°C).\n2. Mix all ingredients together in a bowl.\n3. Pour the mixture into a baking dish.\n4. Bake for 30 minutes or until golden brown.\n5. Serve and enjoy!",
    ingredients: ingredients,
  ),
];

final  FeaturedCookbook dummyCookbook = FeaturedCookbook(
  author: profile,
  title: "First CookBooks",
  description_profile: '   130   ·    103 reviews',
  description: 'A feast for the senses',
  imageUrl: 'assets/images/cookbook.jpg',
  profileUrl: 'assets/images/person.jpg',
  steps: "1. Preheat the oven to 350°F (175°C).\n2. Mix all ingredients together in a bowl.\n3. Pour the mixture into a baking dish.\n4. Bake for 30 minutes or until golden brown.\n5. Serve and enjoy!",
  ingredients: ingredients,
);

final List<String> imageList = [
  'seosonal_food.jpg',
  'cakes.jpg',
  'everyday_food.jpg',
  'drinks.jpg',
  'vegetarian_food.jpg',
];

final List<String> imageNames = [
  'Seasonal Food',
  'Cakes',
  'Everyday Food',
  'Drinks',
  'Vegetarian Food',
];

final List<Recipe> profileRecipes = [
  Recipe(
    id: '1',
    title: 'Crispy Shrimp',
    imageUrl: 'assets/images/crispy_shrimp.jpg',
    description: 'A feast for the senses',
    duration: '20 mins',
    difficulty: 'Easy',
    rating: 4.0,
    author: profile,
    steps: "1. Preheat the oven to 350°F (175°C).\n2. Mix all ingredients together in a bowl.\n3. Pour the mixture into a baking dish.\n4. Bake for 30 minutes or until golden brown.\n5. Serve and enjoy!",
    ingredients: ingredients,
  ),
  Recipe(
    id: '2',
    title: 'Chicken Wings',
    imageUrl: 'assets/images/chicken_wings.jpg',
    description: 'Delicious and juicy wings',
    duration: '30 mins',
    difficulty: 'Easy',
    rating: 5.0,
    author: profile,
    steps: "1. Preheat the oven to 350°F (175°C).\n2. Mix all ingredients together in a bowl.\n3. Pour the mixture into a baking dish.\n4. Bake for 30 minutes or until golden brown.\n5. Serve and enjoy!",
    ingredients: ingredients,
  ),
  Recipe(
    id: '3',
    title: 'Colors Macarons',
    imageUrl: 'assets/images/macaronas.jpg',
    description: 'Sweet bites full of elegance',
    duration: '40 mins',
    difficulty: 'Medium',
    rating: 4.0,
    author: profile,
    steps: "1. Preheat the oven to 350°F (175°C).\n2. Mix all ingredients together in a bowl.\n3. Pour the mixture into a baking dish.\n4. Bake for 30 minutes or until golden brown.\n5. Serve and enjoy!",
    ingredients: ingredients,
  ),
  Recipe(
    id: '4',
    title: 'Pina Colada',
    imageUrl: 'assets/images/pina_colada.jpg',
    description: 'Pina Colada',
    duration: '30 mins',
    difficulty: 'Medium',
    rating: 4.0,
    author: profile,
    steps: "1. Preheat the oven to 350°F (175°C).\n2. Mix all ingredients together in a bowl.\n3. Pour the mixture into a baking dish.\n4. Bake for 30 minutes or until golden brown.\n5. Serve and enjoy!",
    ingredients: ingredients,
  ),
];

final Profile profile = Profile(
  name: 'Dianne Russell',
  username: '@dianne_r',
  imageUrl: 'assets/images/person.jpg',
  bio: 'Food Enthusiast',
  recipesCount: 120,
  likes: 300
);

final List<Recipe> storedRecipes = [
  Recipe(
    id: '1',
    title: 'Crispy Shrimp',
    imageUrl: 'assets/images/crispy_shrimp.jpg',
    description: 'A feast for the senses',
    duration: '20 mins',
    difficulty: 'Easy',
    rating: 4.0,
    author: profile,
    steps: "1. Preheat the oven to 350°F (175°C).\n2. Mix all ingredients together in a bowl.\n3. Pour the mixture into a baking dish.\n4. Bake for 30 minutes or until golden brown.\n5. Serve and enjoy!",
    ingredients: ingredients,
  ),
  Recipe(
    id: '2',
    title: 'Chicken Wings',
    imageUrl: 'assets/images/chicken_wings.jpg',
    description: 'Delicious and juicy wings',
    duration: '30 mins',
    difficulty: 'Easy',
    rating: 5.0,
    author: profile,
    steps: "1. Preheat the oven to 350°F (175°C).\n2. Mix all ingredients together in a bowl.\n3. Pour the mixture into a baking dish.\n4. Bake for 30 minutes or until golden brown.\n5. Serve and enjoy!",
    ingredients: ingredients,
  ),
  Recipe(
    id: '3',
    title: 'Colors Macarons',
    imageUrl: 'assets/images/macaronas.jpg',
    description: 'Sweet bites full of elegance',
    duration: '40 mins',
    difficulty: 'Medium',
    rating: 4.0,
    author: profile,
    steps: "1. Preheat the oven to 350°F (175°C).\n2. Mix all ingredients together in a bowl.\n3. Pour the mixture into a baking dish.\n4. Bake for 30 minutes or until golden brown.\n5. Serve and enjoy!",
    ingredients: ingredients,
  ),
  Recipe(
    id: '4',
    title: 'Pina Colada',
    imageUrl: 'assets/images/pina_colada.jpg',
    description: 'Pina Colada',
    duration: '30 mins',
    difficulty: 'Medium',
    rating: 4.0,
    author: profile,
    steps: "1. Preheat the oven to 350°F (175°C).\n2. Mix all ingredients together in a bowl.\n3. Pour the mixture into a baking dish.\n4. Bake for 30 minutes or until golden brown.\n5. Serve and enjoy!",
    ingredients: ingredients,
  ),
  Recipe(
    id: '5',
    title: 'Spaghetti Carbonara',
    imageUrl: 'assets/images/spaghetti_carbonara.jpg',
    description: 'A classic Italian pasta dish made with eggs, cheese, pancetta, and pepper.',
    duration: '30 mins',
    difficulty: 'Easy',
    rating: 4.0,
    author: profile,
    steps: "1. Preheat the oven to 350°F (175°C).\n2. Mix all ingredients together in a bowl.\n3. Pour the mixture into a baking dish.\n4. Bake for 30 minutes or until golden brown.\n5. Serve and enjoy!",
    ingredients: ingredients,
  ),
  Recipe(
    id: '6',
    title: 'Vegan Salad',
    imageUrl: 'assets/images/vegan_salad.jpg',
    description: 'A fresh and healthy salad with mixed greens, quinoa, and a lemon dressing.',
    duration: '15 mins',
    difficulty: 'Easy',
    rating: 3.5,
    author: profile,
    steps: "1. Preheat the oven to 350°F (175°C).\n2. Mix all ingredients together in a bowl.\n3. Pour the mixture into a baking dish.\n4. Bake for 30 minutes or until golden brown.\n5. Serve and enjoy!",
    ingredients: ingredients,
  ),
  Recipe(
    id: '7',
    title: 'Chicken Curry',
    imageUrl: 'assets/images/chicken_curry.jpg',
    description: 'A rich and flavorful chicken curry with a blend of spices.',
    duration: '45 mins',
    difficulty: 'Medium',
    rating: 4.2,
    author: profile,
    steps: "1. Preheat the oven to 350°F (175°C).\n2. Mix all ingredients together in a bowl.\n3. Pour the mixture into a baking dish.\n4. Bake for 30 minutes or until golden brown.\n5. Serve and enjoy!",
    ingredients: ingredients,
  ),
];