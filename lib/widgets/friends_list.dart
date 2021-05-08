import 'package:flutter/material.dart';
import 'package:sf2/models/person.dart';
import 'package:sf2/utils/theme/colors.dart';
import 'package:sf2/utils/theme/fonts.dart';

class FriendsList extends StatelessWidget {
  final List<Person>friends;

  FriendsList({Key key, this.friends}): super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          if (index == friends.length - 1) {
            return friendRow(friends[index]);
          } else {
            return Column(
              children: [
                friendRow(friends[index]),
                Divider(indent: 72, endIndent: 0)
              ]
            );
          }
        }, 
        childCount: friends.length
      ),
    );
  }

  ListTile friendRow(Person person) {
    return ListTile (
      leading: CircleAvatar(
        backgroundImage: NetworkImage(person.imageURL),
        radius: 20
      ),
      title: Text(person.name, style: TextStyle(fontSize: SFFontSize.subtitle1)), 
      subtitle: Text(person.jobTitle, style: TextStyle(fontSize: SFFontSize.subtitle1, color: Colors.grey)),
      trailing: Icon(Icons.close, color: SFPalete.red200),
    );
  }
}