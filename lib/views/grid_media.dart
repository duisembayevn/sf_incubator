import 'package:flutter/material.dart';

class GridMedia extends StatelessWidget {
  final List<String> mediaLinks;

  GridMedia({Key key, this.mediaLinks}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
          FittedBox(
            child:Image(image: NetworkImage(imageURL)),
            fit: BoxFit.fill,
          ),
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
    return IconButton(
      icon: ClipOval(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(3),
          child: ClipOval(
            child: Container(
              color: Colors.red,
              padding: EdgeInsets.all(3),
              child: Icon(Icons.close, size: 20, color: Colors.white,)
            )
          )
        ), 
      ), 
      onPressed: null
    );
  }
}