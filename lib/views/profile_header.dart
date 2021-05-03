import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  final String fullname;
  final String jobTitle;
  final String imageURL;
  

  ProfileHeader(
    {
      Key key, 
      this.fullname, 
      this.jobTitle,
      this.imageURL
    }
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.only(top: 16)),
        Center(
          child: Stack(
            children: [
              userImage(),
              Positioned(
                bottom: 0,
                right: 4,
                child: addImageButton(),
              )
            ],
          )
        ), 

        Padding(padding: EdgeInsets.only(top: 24)),
        Text(fullname, style: TextStyle(fontSize: 16)),
        Text(jobTitle, style: TextStyle(fontSize: 12))
      ]
    );
  }

  Widget userImage() {
    return CircleAvatar(
      radius: 76,
      backgroundImage: NetworkImage(imageURL),
    );
  }

  Widget addImageButton() {
    return IconButton(
      icon: ClipOval(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(3),
          child: ClipOval(
            child: Container(
              color: Colors.blue,
              padding: EdgeInsets.all(3),
              child: Icon(Icons.add, size: 20, color: Colors.white,)
            )
          )
        ), 
      ), onPressed: null
    );
  }
}