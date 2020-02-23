import 'package:flutter/material.dart';
import '../models/meals.dart';
import '../widgets/meal_item.dart';

class Category_detail_screen extends StatelessWidget {
  final id;
  final title;
  var categoryMeals;
  Category_detail_screen(this.id, this.title) {
    categoryMeals = DUMMY_MEALS.where((ele) {
      return ele.categories.contains(id);
    }).toList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (ctx, index) {
            return MealItem(
              title: categoryMeals[index].title,
              imageUrl: categoryMeals[index].imageUrl,
              duration: categoryMeals[index].duration,
              affordability: categoryMeals[index].affordability,
              complexity: categoryMeals[index].complexity,
            );
          },
          itemCount: categoryMeals.length,
        ),
      ),
    );
  }
}
