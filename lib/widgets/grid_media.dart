import 'package:flutter/material.dart';
import 'package:sf2/utils/extensions/widget+circle+wrapper.dart';

class GridMedia extends StatelessWidget {
  final List<String> mediaLinks;

  GridMedia({Key key, this.mediaLinks}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Container(
            child: mediaCell(mediaLinks[index])
          );
        },
        childCount: mediaLinks.length
      ), 
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 16, 
        mainAxisSpacing: 16,
      )
    );  
  }

  Widget mediaCell(String imageURL) {
    return Container(
      padding: EdgeInsets.all(8),
      width: 96,
      height: 96,
      child: Stack(
        children: [
          Image(
            image: NetworkImage(imageURL), 
            fit: BoxFit.fill, alignment: Alignment.center,),
          Positioned(
            child: closeButton(), 
            top: 0, 
            right: 0,
          )
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.grey,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(Radius.circular(8.0))
      ),
    );
  }

  Widget closeButton() {
    return wrapCircleBorder(
      Colors.white, 
      wrapCircleBorder(
        Colors.red, 
        Icon(
          Icons.close, 
          size: 20, 
          color: Colors.white), 
        EdgeInsets.all(3)),
      EdgeInsets.all(3)
    );
  }
}