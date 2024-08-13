import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TileList extends StatelessWidget {
  bool? isChecked;
  String? title;
  Function(bool?) onChanged;

  TileList({this.isChecked, this.title, required this.onChanged});
  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          title as String,
          style: TextStyle(
              decoration: isChecked! ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
            activeColor: Colors.lightBlueAccent,
            value: isChecked,
            onChanged: onChanged));
  }
}
