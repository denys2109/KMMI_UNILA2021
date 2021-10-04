import 'package:flutter/material.dart';
import 'package:kmmi_unila/components/today_recipe_list_view.dart';
import '../api/mock_fooderlich_service.dart';
import '../screens/components.dart';
import 'components.dart';

class ExploreScreen extends StatelessWidget {
  final mockService = MockFooderlichService();
  ExploreScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: mockService.getExploreData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return ListView(scrollDirection: Axis.vertical, children: [
              TodayRecipeListView(recipes: snapshot.data.todayRecipes),
              const SizedBox(height: 16),
              FriendPostListView(friendPosts: snapshot.data.friendPosts)
            ]);
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        });
  }
}
