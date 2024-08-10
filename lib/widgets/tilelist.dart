// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

class TileList extends StatefulWidget {
  @override
  State<TileList> createState() => _TileListState();
}

class _TileListState extends State<TileList> {
  bool isChecked = false;
  

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text('Buy Milk' ,style: TextStyle(decoration: isChecked? TextDecoration.lineThrough:null),),
        trailing: TaskCheckBox(
          isChecked: isChecked,
          toggleCheckBox:(bool? checkBoxState) {
    setState(() {
      isChecked = checkBoxState as bool;
    });
  }
        ));
  }
}

class TaskCheckBox extends StatelessWidget {
 void Function(bool?)? toggleCheckBox;
  late bool isChecked;
  TaskCheckBox({
    
    required this.toggleCheckBox,
    required this.isChecked,
  });

  @override
  Widget build(BuildContext context) {
    return Checkbox(activeColor: Colors.lightBlueAccent,value: isChecked, onChanged: toggleCheckBox );
  }
}
