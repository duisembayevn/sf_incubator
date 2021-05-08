import 'package:flutter/material.dart';

class BottomButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(padding: EdgeInsets.only(left: 16, top: 16)),
        Expanded(child: ElevatedButton(onPressed: () {}, child: Text("Delete"))),
        Padding(padding: EdgeInsets.only(left: 8, right: 8)),
        Expanded(child: OutlineButton(onPressed: null, child: Text("Add"))),
        Padding(padding: EdgeInsets.only(right: 16)),
    ]);
  }
}