import 'dart:convert';

import 'links.dart';

class Recipe {
  final Recipe recipe;
  final Links links;
  Recipe({
    required this.recipe,
    required this.links,
  });

  Recipe copyWith({
    Recipe? recipe,
    Links? links,
  }) {
    return Recipe(
      recipe: recipe ?? this.recipe,
      links: links ?? this.links,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'recipe': recipe.toMap(),
      'links': links.toMap(),
    };
  }

  factory Recipe.fromMap(Map<String, dynamic> map) {
    return Recipe(
      recipe: Recipe.fromMap(map['recipe']),
      links: Links.fromMap(map['links']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Recipe.fromJson(String source) => Recipe.fromMap(json.decode(source));

  @override
  String toString() => 'Recipe(recipe: $recipe, links: $links)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Recipe && other.recipe == recipe && other.links == links;
  }

  @override
  int get hashCode => recipe.hashCode ^ links.hashCode;
}
