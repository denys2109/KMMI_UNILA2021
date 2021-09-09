import 'package:flutter/material.dart';
import 'home_fooderlich.dart';
import 'fooderlich_theme.dart';
import 'package:provider/provider.dart';
import 'models/models.dart';

void main() {
  runApp(Fooderlich());
}

// =======KULIAH KMMI=======
//Latihan Recipe App
class Fooderlich extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.light();

    return MaterialApp(
      title: 'Fooderlich',
      theme: theme,
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => TabManager(),
          ),
          ChangeNotifierProvider(
            create: (context) => GroceryManager(),
          ),
        ],
        child: const Home(),
      ),
    );
  }
}
