import 'package:flutter/painting.dart';

class GroceryItem {
  final String id;
  final String name;
  final String organizer;
  final Color color;
  final int quantity;
  final DateTime date;
  final bool isComplete;
  GroceryItem(
      {this.id,
      this.name,
      this.organizer,
      this.color,
      this.quantity,
      this.date,
      this.isComplete = false});
  GroceryItem copyWith(
      {String id,
      String name,
      String organizer,
      Color color,
      int quantity,
      DateTime date,
      bool isComplete}) {
    return GroceryItem(
        id: id ?? this.id,
        name: name ?? this.name,
        organizer: organizer ?? this.organizer,
        color: color ?? this.color,
        quantity: quantity ?? this.quantity,
        date: date ?? this.date,
        isComplete: isComplete ?? this.isComplete);
  }
}
