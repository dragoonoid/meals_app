import 'package:flutter/material.dart';
import 'package:meals_app/meal_detail.dart';
import 'package:meals_app/screen/filters.dart';
import 'package:meals_app/screen/tab_screen.dart';
import 'category_meal_screen.dart';
import 'package:meals_app/front_screen_data.dart';

import 'models/meal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool veg = false;
  List<Meal> availableMeals = mealsData;
  void setFilters(bool veg) {
    setState(() {
      this.veg = veg;
      availableMeals = mealsData.where((element) {
        if (veg == true && element.isVeg == true) {
          return true;
        } else if (veg == false) {
          return true;
        } else {
          return false;
        }
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: const TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              bodyText2: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              subtitle1: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'RobotoCondensed',
              ),
            ),
      ),
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home: const TabScreen(),
      routes: {
        '/categoriesMeal': (context) => CategoryMealScreen(availableMeals),
        '/meal-detail': (context) => const MealDetail(),
        '/filters': (context) => Filters(veg, setFilters),
      },
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);
//   final String title;
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Meals App'),
//       ),
//       body: const CategoriesScreen(),
//     );
//   }
// }
