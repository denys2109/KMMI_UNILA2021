import 'package:flutter/material.dart';
import '../models/models.dart';
import 'components.dart';

class FriendPostListView extends StatelessWidget {
  final List<Post> friendPosts;
  FriendPostListView({Key key, this.friendPosts}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 16, right: 16, top: 0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text('User Discuss', style: Theme.of(context).textTheme.headline1),
          SizedBox(height: 16),
          ListView.separated(
              primary: false,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: friendPosts.length,
              itemBuilder: (context, index) {
                final postFriend = friendPosts[index];
                return FriendPostTile(post: postFriend);
              },
              separatorBuilder: (context, index) {
                return SizedBox(height: 16);
              }),
          SizedBox(height: 16),
        ]));
  }
}
