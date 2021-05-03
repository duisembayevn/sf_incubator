
import 'package:sf2/models/person.dart';

class FriendsRepository {
  List<Person> friends = List<Person>();

  void addFriend(String name, String jobTitle) {
    friends.add(Person(name: name, jobTitle: jobTitle, imageURL: ""));
  }
  
  List<Person>getFriends() {
    return this.friends;
  }
}