
import 'package:flutter/material.dart';

class SelectType extends StatelessWidget {
  final List<String> fontTypes;

  SelectType({Key key, this.fontTypes}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      child: ListView.builder(
        padding: EdgeInsets.only(left: 16),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.only(left: 4, right: 4),
            child: Chip(label: Text(fontTypes[index].toString()))
          );
        },
        scrollDirection: Axis.horizontal,
        itemCount: fontTypes.length,
        
      )
    );
  }
}