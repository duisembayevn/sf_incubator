import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sf2/bloc/friends_bloc.dart';
import 'package:sf2/bloc/friends_event.dart';

class AddFriend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final FriendsBloc block = BlocProvider.of(context);

    return OutlineButton(
      color: Colors.grey,
      onPressed: () { 
        block.add(FriendsAddEvent());
      },
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("ADD FRIEND", style: TextStyle(color: Colors.black)),
            Icon(Icons.add, color: Colors.black)
          ]
        )
      )
    );
  }
}