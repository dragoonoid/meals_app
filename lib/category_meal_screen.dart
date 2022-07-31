import 'package:flutter/material.dart';
import 'front_screen_data.dart';
import 'meal_item.dart';
import 'models/meal.dart';

class CategoryMealScreen extends StatefulWidget {
  final List<Meal> availableMeal;
  const CategoryMealScreen(this.availableMeal, {Key? key}) : super(key: key);

  @override
  State<CategoryMealScreen> createState() => _CategoryMealScreenState();
}

class _CategoryMealScreenState extends State<CategoryMealScreen> {
  var title;
  var mealList;
  var loadInitData = false;
  @override
  void didChangeDependencies() {
    if (!loadInitData) {
      final args =
          ModalRoute.of(context)?.settings.arguments as Map<String, String>;
      title = args['title'].toString();
      final id = args['id'];
      mealList = widget.availableMeal.where((meal) {
        return meal.categories.contains(id);
      }).toList();
      loadInitData = true;
    }
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
        itemBuilder: (context, i) {
          return MealItem(
            mealList[i].title,
            mealList[i].imageUrl,
            mealList[i].id,
            mealList[i].duration,
            mealList[i].complexity,
            mealList[i].affordability,
          );
        },
        itemCount: mealList.length,
      ),
    );
  }
}
