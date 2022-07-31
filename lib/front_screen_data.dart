import 'package:flutter/material.dart';
import 'package:meals_app/models/meal.dart';
import './models/categories.dart';

const data = [
  Categories('c1', 'Indian', Colors.redAccent),
  Categories('c2', 'Chinese', Colors.lightBlueAccent),
  Categories('c3', 'Quick Ans Tasty', Colors.pinkAccent),
  Categories('c4', 'Spanish', Colors.indigoAccent),
  Categories('c5', 'Italian', Colors.orangeAccent),
  Categories('c6', 'Under Budget', Colors.yellowAccent),
  Categories('c7', 'Dessert', Colors.grey),
  Categories('c8', 'Salsa', Colors.teal),
  Categories('c9', 'Maggie', Colors.deepPurple),
  Categories('c10', 'Momos', Colors.green),
  Categories('c11', 'South Indian', Colors.blueGrey),
];

const mealsData = [
  Meal(
      'm1',
      'Maggie',
      ['c1', 'c2', 'c3', 'c4', 'c5'],
      'https://upload.wikimedia.org/wikipedia/commons/a/a8/Maggi_with_Tea_flavored_Milk.jpg',
      [
        '2 Packet Maggie',
        '2 Cups of Water',
        'Some Veggies according to your taste',
        'A little pinch of salt'
      ],
      [
        'Cut some veggies for example onion ,tomato and chilies.',
        'Heat some Cooking oil or butter in a pan and add veggies to it and stir it for around 2 minutes',
        'Then add 2 cups of water to the pan and let it boil for 2 minutes',
        'Add 2 packets of Maggie to boiling water.',
        'Finally add 2 packets of Maggie-Masala which came inside the maggie packet',
        'Add 1t spoon of salt',
        'Stir them well and cover the pan for around 2-3 minutes',
        'Turn off the gas and leave the pan as it it for 2 minutes',
        'Your Maggie Noddles are now ready to be served'
      ],
      15,
      Complexity.simple,
      Affordability.cheap,
      true,
      false),
  Meal(
      'm2',
      'Pasta',
      ['c1', 'c2', 'c3', 'c4', 'c5'],
      'https://upload.wikimedia.org/wikipedia/commons/2/24/Penne_all%27arrabbiata.jpg',
      [
        '2 Packet Pasta',
        '2 Cups of Water',
        'Some Veggies according to your taste',
        'A little pinch of salt'
      ],
      [
        'Cut some veggies for example onion ,tomato and chilies.',
        'Heat some Cooking oil or butter in a pan and add veggies to it and stir it for around 2 minutes',
        'Then add 2 cups of water to the pan and let it boil for 2 minutes',
        'Add 2 packets of Maggie to boiling water.',
        'Finally add 2 packets of Maggie-Masala which came inside the maggie packet',
        'Add 1t spoon of salt',
        'Stir them well and cover the pan for around 2-3 minutes',
        'Turn off the gas and leave the pan as it it for 2 minutes',
        'Your Maggie Noddles are now ready to be served'
      ],
      20,
      Complexity.hard,
      Affordability.cheap,
      false,
      true),
  Meal(
      'm3',
      'Momos',
      ['c6', 'c7', 'c8', 'c9', 'c10', 'c11'],
      'https://upload.wikimedia.org/wikipedia/commons/a/a1/Momo_nepal.jpg',
      [
        'Flour',
        'Cabbage',
        'Onion',
        'Capsicum',
        'Cooking Oil',
      ],
      [
        'Add water to 3-4 cups of flour and mix well.',
        'After that make round circles of the dough according to the size of the required momos',
        'Cut all the above mentioned vegetable into small pieces and mix well.',
        'Fill the momos with the above filling',
        'Apply some oil to he outer wall of the momos.',
        'Now p;ace all the momos into the steam utensil and clod the lid for about 15 minutes',
        'Your Momos are now ready'
      ],
      45,
      Complexity.challenging,
      Affordability.cheap,
      true,
      false),
  Meal(
      'm4',
      'Chicken Biryani',
      ['c6', 'c7', 'c8', 'c9', 'c10', 'c11'],
      'https://upload.wikimedia.org/wikipedia/commons/3/35/Biryani_Home.jpg',
      [
        '1 Bowl Rice',
        '250grams chicken',
        'Spices according to taste',
      ],
      [
        'Clean the chicken thoroughly with clean water',
        'Cut veggies and pat it to a pan along with some oil and stir it for 2 minutes at low flame.',
        'After that add rice and chicken pieces.',
        'Add spices according to your taste and mix them well',
        'Close the lid for 15-20 minutes',
        'Serve your Chicken Biryani with some chilled curd.'
            'ENJOY!'
      ],
      45,
      Complexity.challenging,
      Affordability.luxurious,
      false,
      true),
];
