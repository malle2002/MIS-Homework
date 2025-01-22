import 'package:flutter/material.dart';
import 'package:homework2/assets/constants.dart';
import 'package:homework2/widget/category_chip.dart';
import 'package:homework2/widget/featured_cook_book_widget.dart';
import 'package:homework2/widget/recipe_card.dart';
import 'package:homework2/widget/navigation_bar.dart';
import 'package:homework2/assets/data/dummy_data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedCategory = 'Breakfast';

  @override
  void initState() {
    super.initState();
    if (dummyCategories.isNotEmpty) {
      selectedCategory = dummyCategories.first;
    } else {
      selectedCategory = 'Breakfast';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            'Discover Recipes',
            style: TextStyle(color: AppColor100, fontWeight: FontWeight.w800),
          ),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: dummyCategories.map((category) {
                    return CategoryChip(
                      label: category,
                      isSelected: selectedCategory == category,
                      onTap: () {
                        setState(() {
                          selectedCategory = category;
                        });
                      },
                    );
                  }).toList(),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Trending Recipes",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppColor100),
              ),
              SizedBox(height: 2),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: trendingRecipes.isNotEmpty ? trendingRecipes.length : 0,
                  itemBuilder: (context, index) {
                    final recipe = trendingRecipes[index];
                    return RecipeCard(recipe: recipe);
                  },
                ),
              ),
              SizedBox(height: 20),
              FeaturedCookbookWidget(cookbook: dummyCookbook),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomNavigationBar(),
    );
  }
}
