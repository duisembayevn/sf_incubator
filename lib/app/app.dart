import 'package:flutter/material.dart';
import 'package:sf2/pages/profile_page.dart';

class SFApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SFTasks',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ProfilePage(),
    );
  }
}