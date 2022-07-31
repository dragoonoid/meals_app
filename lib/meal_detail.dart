import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meals_app/front_screen_data.dart';

class MealDetail extends StatelessWidget {
  const MealDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final list =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final meal = mealsData.firstWhere(
      (element) {
        return element.id == list['mealId'];
      },
    );
    Widget ingredients(List temp) {
      int i = 0;
      return SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: temp.map((e) {
            i = i + 1;
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$i ) ',
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 5,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: Text(
                    e,
                    style: const TextStyle(fontSize: 20),
                    overflow: TextOverflow.fade,
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      );
    }

    return Scaffold(
        appBar: AppBar(
          title: Text(list['title'].toString()),
        ),
        body: Padding(
          padding: const EdgeInsets.all(13.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    meal.imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  'Ingredients',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                ingredients(meal.ingredients),
                const Divider(),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  'Procedure',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                ingredients(meal.steps),
              ],
            ),
          ),
        ));
  }
}
