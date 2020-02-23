import 'package:flutter/material.dart';
import '../models/meals.dart';

class Category_detail_screen extends StatelessWidget {
  final id;
  final title;
  var catergoryMeals;
  Category_detail_screen(this.id, this.title) {
    catergoryMeals = DUMMY_MEALS.where((ele) {
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
          itemBuilder: (ctx, idx) {
            return Text(catergoryMeals[idx].title);
          },
          itemCount: catergoryMeals.length,
        ),
      ),
    );
  }
}
