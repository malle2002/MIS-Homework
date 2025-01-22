import 'dart:collection';

final class Ingredient extends LinkedListEntry<Ingredient> {
  String quantity;
  String name;

  Ingredient({required this.quantity, required this.name});

  @override
  String toString() {
    return "- $quantity $name";
  }
}
