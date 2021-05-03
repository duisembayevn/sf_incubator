import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sf2/bloc/friends_bloc.dart';
import 'package:sf2/bloc/friends_event.dart';
import 'package:sf2/views/add_friend_widget.dart';
import 'package:sf2/views/friends_list.dart';
import 'package:sf2/views/grid_media.dart';
import 'package:sf2/views/profile_header.dart';
import 'package:sf2/views/select_type.dart';
import 'package:sf2/models/person.dart';
import 'package:sf2/views/bottom_buttons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  final Person me = Person.me();

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        actions: [IconButton(icon: Icon(Icons.menu), onPressed: null)],
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
                      child: Text("SelectType", style: TextStyle(fontSize: 16)),
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
                  child: Text("Friends", style: TextStyle(fontSize: 16)),
                )
              ),

              SliverToBoxAdapter(
                child: BlocProvider<FriendsBloc>(
                  create: (context) {
                    return FriendsBloc();
                  }, 
                  child: Column(
                    children: [
                      FriendsList(), 
                      Container(
                        padding: EdgeInsets.all(16),
                        child: AddFriend()
                      )
                    ],
                  ),
                ),
              ),


              SliverToBoxAdapter(
                child: Container(
                  padding: EdgeInsets.only(left: 16, bottom: 16),
                  child: Text("My Media", style: TextStyle(fontSize: 16))
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