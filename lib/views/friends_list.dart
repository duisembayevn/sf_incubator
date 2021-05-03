import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sf2/bloc/friends_bloc.dart';
import 'package:sf2/bloc/friends_state.dart';
import 'package:sf2/models/person.dart';

class FriendsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FriendsBloc, FriendsState>(
      builder: (context, state) {
        if (state is FriendsLoadedState) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Column(
                  children: [
                    row(state.friends[index]),
                    Divider(indent: 72, endIndent: 0, height: 1)
                  ]
                );
              }, 
              childCount: state.friends.length
            )
          );
        } else {
          return Center(child: Text("No Friens"),);
        }
      },
    );
  }

  ListTile row(Person person) {
    return ListTile (
      leading: CircleAvatar(
        // backgroundImage: NetworkImage(person.imageURL),
        radius: 20
      ),
      title: Text(person.name, style: TextStyle(fontSize: 16)), 
      subtitle: Text(person.jobTitle, style: TextStyle(fontSize: 12, color: Colors.grey)),
      trailing: Icon(Icons.close, color: Colors.red),
    );
  }
}