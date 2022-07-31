import 'package:flutter/material.dart';
import 'package:meals_app/screen/drawer.dart';

class Filters extends StatefulWidget {
  final Function setFilters;
  final bool veg;
  const Filters(this.veg, this.setFilters, {Key? key}) : super(key: key);

  @override
  State<Filters> createState() => _FiltersState();
}

class _FiltersState extends State<Filters> {
  bool vegOnly = true;
  bool nonVeg = false;

  @override
  initState() {
    vegOnly = widget.veg;
    nonVeg = !widget.veg;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const Drawer(
          child: Draw(),
        ),
        appBar: AppBar(
          title: const Text('Filters'),
          actions: [
            IconButton(
              icon: const Icon(Icons.save),
              onPressed: () => widget.setFilters(vegOnly),
            )
          ],
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Filter out your meals',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                overflow: TextOverflow.fade,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SwitchListTile(
              title: const Text('Veg Only'),
              value: vegOnly,
              onChanged: (x) {
                setState(() {
                  if (x == false) {
                    vegOnly = false;
                    nonVeg = true;
                  } else {
                    vegOnly = true;
                    nonVeg = false;
                  }
                });
              },
            ),
            const SizedBox(
              height: 10,
            ),
            SwitchListTile(
              title: const Text('Veg / Non-Veg Both'),
              value: nonVeg,
              onChanged: (x) {
                setState(() {
                  if (x == true) {
                    vegOnly = false;
                    nonVeg = true;
                  } else {
                    vegOnly = true;
                    nonVeg = false;
                  }
                });
              },
            )
          ],
        ));
  }
}
