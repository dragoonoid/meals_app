import 'package:flutter/material.dart';

class CategoriesItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;
  const CategoriesItem(this.id, this.title, this.color);
  //const CategoriesItem({Key? key}) : super(key: key);
  void navigate(BuildContext ctx) {
    Navigator.pushNamed(ctx, '/categoriesMeal',
        arguments: {'id': id, 'title': title});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => navigate(context),
      child: Container(
        child: Text(
          title,
          style: Theme.of(context).textTheme.subtitle1,
        ),
        padding: const EdgeInsets.all(15),
        //margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [color.withOpacity(0.7), color],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
