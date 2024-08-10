// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TileList extends StatefulWidget {
  @override
  State<TileList> createState() => _TileListState();
}

class _TileListState extends State<TileList> {
  bool isChecked = false;
  void onChangedBox(bool checkBoxState) {
    setState(() {
      isChecked = checkBoxState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text('Buy Milk' ,style: TextStyle(decoration: isChecked? TextDecoration.lineThrough:null),),
        trailing: TaskCheckBox(
          isChecked: isChecked,
          toggleCheckBox: onChangedBox,
        ));
  }
}

class TaskCheckBox extends StatelessWidget {
  late Function toggleCheckBox;
  late bool isChecked;
  TaskCheckBox({
    Key? key,
    required this.toggleCheckBox,
    required this.isChecked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Checkbox(value: isChecked, onChanged: (bool) {});
  }
}
