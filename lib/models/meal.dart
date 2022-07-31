enum Complexity { simple, challenging, hard }
enum Affordability { cheap, pricey, luxurious }

class Meal {
  final String id;
  final String title;
  final List<String> categories; // id in which categories this meal is present
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  final bool isVeg;
  final bool isNonVeg;
  const Meal(
      this.id,
      this.title,
      this.categories,
      this.imageUrl,
      this.ingredients,
      this.steps,
      this.duration,
      this.complexity,
      this.affordability,
      this.isVeg,
      this.isNonVeg);
}
