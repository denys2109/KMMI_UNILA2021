import 'package:flutter/material.dart';
import '../models/models.dart';
import '../fooderlich_theme.dart';

class Card2 extends StatelessWidget {
  final ExploreRecipe recipe;

  const Card2({Key key, this.recipe}) : super(key: key);
  final String category = 'Tensorflow Webinar';
  final String title = 'Learn About Neural Network ';
  final String chef = 'by Rizky Rayna';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Stack(
          children: [
            Text(
              category,
              style: FooderlichTheme.darkTextTheme.bodyText1,
            ),
            Positioned(
              child: Text(
                title,
                style: FooderlichTheme.darkTextTheme.headline3,
              ),
              top: 20,
            ),
            Positioned(
              child: Text(
                chef,
                style: FooderlichTheme.darkTextTheme.bodyText1,
              ),
              bottom: 10,
              right: 0,
            )
          ],
        ),
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(width: 350, height: 450),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/webinar_pics/tfheader.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
    );
  }
}
