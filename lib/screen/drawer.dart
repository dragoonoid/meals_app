import 'package:flutter/material.dart';

class Draw extends StatelessWidget {
  const Draw({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.orange,
          alignment: Alignment.center,
          height: 120,
          width: double.infinity,
          child: const Text(
            'Meal',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Division('Meals', Icons.restaurant, '/'),
        const SizedBox(
          height: 10,
        ),
        const Division('Filters', Icons.settings, '/filters'),
      ],
    );
  }
}

class Division extends StatelessWidget {
  final IconData icon;
  final String title;
  final String x;
  const Division(this.title, this.icon, this.x, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.of(context).pushReplacementNamed(x);
      },
      leading: Icon(icon),
      title: Text(
        title,
        style: const TextStyle(fontSize: 24),
      ),
    );
  }
}
