import 'package:flutter/material.dart';
import 'package:meals_app/models/meal.dart';

class MealItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String mealId;
  final int time;
  final Complexity complex;
  final Affordability affor;
  const MealItem(this.title, this.imageUrl, this.mealId, this.time,
      this.complex, this.affor,
      {Key? key})
      : super(key: key);
  String hard(Complexity x) {
    if (x == Complexity.simple) {
      return 'Simple';
    } else if (x == Complexity.challenging) {
      return 'Challenging';
    } else {
      return 'Hard';
    }
  }

  String cost(Affordability x) {
    if (x == Affordability.cheap) {
      return 'Cheap';
    } else if (x == Affordability.luxurious) {
      return 'Luxurious';
    } else {
      return 'Pricey';
    }
  }

  void show(BuildContext context) {
    Navigator.of(context).pushNamed('/meal-detail',
        arguments: {'title': title, 'mealId': mealId, 'image': imageUrl});
  }

  @override
  Widget build(BuildContext context) {
    String hardness = hard(complex);
    String price = cost(affor);
    return InkWell(
      onTap: () => show(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              child: Image.network(
                imageUrl,
                height: 250,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.timelapse_rounded),
                          const SizedBox(
                            width: 5,
                          ),
                          Text('${time.toString()} mins'),
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(Icons.work),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(hardness),
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(Icons.attach_money_outlined),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(price),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
