import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';
  // final categoryId;
  // final categoryTitle;
  // CategoryMealsScreen({this.categoryId, this.categoryTitle});
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryId = routeArgs['id'];
    final categoryTitle = routeArgs['title'];
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: Center(
        child: Text("The Recipes For The Category!"),
      ),
    );
  }
}
