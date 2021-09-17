import 'dart:convert';

class Ingredient {
  final String text;
  final int quantity;
  final String measure;
  final String food;
  final int weight;
  final String foodCategory;
  final String foodId;
  final String image;
  Ingredient({
    required this.text,
    required this.quantity,
    required this.measure,
    required this.food,
    required this.weight,
    required this.foodCategory,
    required this.foodId,
    required this.image,
  });

  Ingredient copyWith({
    String? text,
    int? quantity,
    String? measure,
    String? food,
    int? weight,
    String? foodCategory,
    String? foodId,
    String? image,
  }) {
    return Ingredient(
      text: text ?? this.text,
      quantity: quantity ?? this.quantity,
      measure: measure ?? this.measure,
      food: food ?? this.food,
      weight: weight ?? this.weight,
      foodCategory: foodCategory ?? this.foodCategory,
      foodId: foodId ?? this.foodId,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'text': text,
      'quantity': quantity,
      'measure': measure,
      'food': food,
      'weight': weight,
      'foodCategory': foodCategory,
      'foodId': foodId,
      'image': image,
    };
  }

  factory Ingredient.fromMap(Map<String, dynamic> map) {
    return Ingredient(
      text: map['text'],
      quantity: map['quantity']?.toInt(),
      measure: map['measure'],
      food: map['food'],
      weight: map['weight']?.toInt(),
      foodCategory: map['foodCategory'],
      foodId: map['foodId'],
      image: map['image'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Ingredient.fromJson(String source) => Ingredient.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Ingredient(text: $text, quantity: $quantity, measure: $measure, food: $food, weight: $weight, foodCategory: $foodCategory, foodId: $foodId, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Ingredient &&
      other.text == text &&
      other.quantity == quantity &&
      other.measure == measure &&
      other.food == food &&
      other.weight == weight &&
      other.foodCategory == foodCategory &&
      other.foodId == foodId &&
      other.image == image;
  }

  @override
  int get hashCode {
    return text.hashCode ^
      quantity.hashCode ^
      measure.hashCode ^
      food.hashCode ^
      weight.hashCode ^
      foodCategory.hashCode ^
      foodId.hashCode ^
      image.hashCode;
  }
}