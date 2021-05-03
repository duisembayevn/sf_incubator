import 'package:flutter/material.dart';
import 'package:sf2/models/person.dart';

abstract class FriendsState {}

class FriendsEmptyState extends FriendsState {

}

class FriendsLoadingState extends FriendsState {

}

class FriendsLoadedState extends FriendsState {
  final List<Person> friends;

  FriendsLoadedState({@required this.friends}) : assert(friends != null);
}

class FriendsLoadedErrorState extends FriendsState {
  
}