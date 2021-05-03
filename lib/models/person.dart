final String myAvatar = "https://deadline.com/wp-content/uploads/2020/09/Gugu-Mbatha-Raw-e1610021013129.jpg";
final String friend1Avatar = "";
final String friend2Avatar = "";
final String friend3Avatar = "";
final String friend4Avatar = "";
final String friend5Avatar = "";

class Person {
  final String name;
  final String jobTitle;
  String imageURL;

  List<Person>frieds = List<Person>();
  List<String>mediaLinks = _makeMediaArray();
  List<String>fontTypes = ["Black", "Bold", "Medium", "Regular", "Light"].toList();

  Person({this.name, this.jobTitle, this.imageURL});

  void addFriend(String name, String jobTitle, String imageURL) {
    this.frieds.add(Person(name: name, jobTitle: jobTitle, imageURL: imageURL));
  }

  static Person me() {
    Person person = Person(name: "Julia Nelson", jobTitle: "Flutter Developer", imageURL: myAvatar);

    person.addFriend("Jordan Smith", "iOS developer", myAvatar);
    person.addFriend("Jordan Smith", "iOS developer", myAvatar);
    person.addFriend("Jordan Smith", "iOS developer", myAvatar);
    person.addFriend("Jordan Smith", "iOS developer", myAvatar);
    person.addFriend("Jordan Smith", "iOS developer", myAvatar);

    return person;
  }

  static List<String> _makeMediaArray() {
    return [
      "https://www.usd259.org/cms/lib/KS01906405/Centricity/ModuleInstance/32748/large/GK_Escalada_Unpleasant.jpg?rnd=0.271245439663178",
      "https://www.artmajeur.com/medias/standard/a/r/artdenoe/artwork/13370225_mg-3070.jpg",
      "https://www.artmajeur.com/medias/standard/a/r/artdenoe/artwork/13370225_mg-3070.jpg",
      "https://www.artmajeur.com/medias/standard/a/r/artdenoe/artwork/13370225_mg-3070.jpg"
    ].toList();
  }
}