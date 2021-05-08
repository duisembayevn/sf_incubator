import 'package:flutter/material.dart';
import 'package:sf2/models/person.dart';
import 'package:sf2/utils/theme/colors.dart';
import 'package:sf2/utils/theme/fonts.dart';
import 'package:sf2/widgets/add_friend_button.dart';
import 'package:sf2/widgets/friends_list.dart';
import 'package:sf2/widgets/grid_media.dart';
import 'package:sf2/widgets/profile_header.dart';
import 'package:sf2/widgets/select_type.dart';
import 'package:sf2/widgets/delete_add_buttons.dart';


class ProfilePage extends StatefulWidget{
  final Person me = Person.me();

  final String title = "Profile";
  final String fontsTitle = "Selec type";
  final String friendsTitle = "Friends";
  final String mediaTitle = "My Media";

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: SFPalete.white,
        leading: Icon(
          Icons.arrow_back, 
          color: SFPalete.black),
        title: Text(
          widget.title, 
          style: TextStyle(color: SFPalete.black), 
          textAlign: TextAlign.left
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.menu, color: SFPalete.black,), 
            onPressed: () {}
          )
        ],
      ),
      body: SafeArea(child: 
        Container(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: ProfileHeader(
                  fullname: widget.me.name, 
                  jobTitle: widget.me.jobTitle,
                  imageURL: widget.me.imageURL,
                )
              ),

              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.only(top: 24)),
                    Divider(indent: 16, endIndent: 16)
                  ]
                )
              ),

              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 16, bottom: 12, top: 16),
                      child: Text(
                        widget.fontsTitle, 
                        style: TextStyle(fontSize: SFFontSize.body1)
                      ),
                    ),
                    SelectType(
                      fontTypes: widget.me.fontTypes
                    )
                  ],
                )
              ),

              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.only(top: 12)),
                    Divider(indent: 16, endIndent: 16)
                  ]
                )
              ),

              SliverToBoxAdapter(
                child: Container(
                  padding: EdgeInsets.only(left: 16),
                  child: Text(
                    widget.friendsTitle, 
                    style: TextStyle(fontSize: SFFontSize.body1)
                  ),
                )
              ),

              FriendsList(friends: widget.me.frieds),

              SliverToBoxAdapter(
                child: Container(
                  padding: EdgeInsets.only(top: 18, left: 16, right: 16),
                  child: AddFriend()
                )
              ),

              SliverToBoxAdapter(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Divider(
                    indent: 16, 
                    endIndent: 16)
                )
              ),

              SliverToBoxAdapter(
                child: Container(
                  padding: EdgeInsets.only(left: 16, bottom: 16),
                  child: Text(
                    widget.mediaTitle,
                    style: TextStyle(fontSize: SFFontSize.headline5)
                  )
                )
              ),
              GridMedia(mediaLinks: widget.me.mediaLinks),
              SliverToBoxAdapter(child: BottomButtons())
            ],
          ),
        ),
      )
    );
  }
}