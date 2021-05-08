import 'package:flutter/material.dart';
import 'package:sf2/utils/theme/colors.dart';
import 'package:sf2/utils/theme/fonts.dart';
import 'package:sf2/utils/extensions/widget+circle+wrapper.dart';

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
  ): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.only(top: 16)),
        Center(
          child: Stack(
            children: [
              _userImage(),
              Positioned(
                bottom: 0,
                right: 4,
                child: _addImageButton(),
              )
            ],
          )
        ), 

        Padding(padding: EdgeInsets.only(top: 24)),
        Text(fullname, style: TextStyle(fontSize: SFFontSize.subtitle1)),
        Text(jobTitle, style: TextStyle(fontSize: SFFontSize.caption, color: Colors.grey))
      ]
    );
  }

  Widget _userImage() {
    return CircleAvatar(
      radius: 76,
      backgroundImage: NetworkImage(imageURL),
    );
  }

  Widget _addImageButton() {
    return wrapCircleBorder(
      SFPalete.white, 
      wrapCircleBorder(
        SFPalete.violet500,
        Icon(
          Icons.add, 
          size: 20, 
          color: SFPalete.white
        ), 
        EdgeInsets.all(3)
      ), 
      EdgeInsets.all(3)
    );
  }
}