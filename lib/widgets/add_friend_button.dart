import 'package:flutter/material.dart';
import 'package:sf2/utils/theme/colors.dart';
import 'package:sf2/utils/theme/fonts.dart';

class AddFriend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      color: Colors.grey,
      onPressed: () { },
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("ADD FRIEND", style: TextStyle(fontSize: SFFontSize.button)),
            Icon(Icons.add, color: SFPalete.black, size: 14,)
          ]
        )
      )
    );
  }
}