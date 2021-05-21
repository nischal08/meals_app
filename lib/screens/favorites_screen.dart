import 'package:flutter/material.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/widgets/meal_item.dart';

class FavoritesScreen extends StatefulWidget {
  final List<Meal> favouriteMeals;

  const FavoritesScreen(this.favouriteMeals);

  @override
  _FavoritesScreenState createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    if (widget.favouriteMeals.isEmpty) {
      return Center(
        child: Container(
          child: Text("You have no favorities yet - start adding some!"),
        ),
      );
    } else {
      return ListView.builder(
        itemBuilder: (context, index) {
          return MealItem(
            id: widget.favouriteMeals[index].id,
            title: widget.favouriteMeals[index].title,
            imageUrl: widget.favouriteMeals[index].imageUrl,
            duration: widget.favouriteMeals[index].duration,
            complexity: widget.favouriteMeals[index].complexity,
            affordability: widget.favouriteMeals[index].affordability,
           
          );
        },
        itemCount: widget.favouriteMeals.length,
      );
    }
  }
}
