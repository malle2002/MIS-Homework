import 'package:flutter/material.dart';
import 'package:homework2/assets/constants.dart';
import 'package:homework2/assets/data/dummy_data.dart';
import 'package:homework2/widget/navigation_bar.dart';
import 'package:homework2/widget/recipe_card_stored.dart';

class StoreRecipeScreen extends StatelessWidget {
  const StoreRecipeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: AppColor100,
        ),
        title: Center(
          child: Text(
            'Stored Recipes',
            style: TextStyle(color: AppColor100, fontWeight: FontWeight.w800),
          ),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                  childAspectRatio: 0.8,
                ),
                itemCount: storedRecipes.length,
                itemBuilder: (context, index) {
                  return RecipeCardStored(recipe: storedRecipes[index]);
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomNavigationBar(),
    );
  }
}
