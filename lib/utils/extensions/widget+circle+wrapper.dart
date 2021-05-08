import 'package:flutter/material.dart';

extension WidgetCircleWrapper on Widget {
  Widget wrapCircleBorder(
    Color color, 
    Widget widget,
    EdgeInsetsGeometry padding
  ) {
    return ClipOval(
      child: Container(
        color: color,
        child: widget,
        padding: padding,
      ),
    );
  }
}