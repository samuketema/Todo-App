import 'package:flutter/material.dart';
import 'tilelist.dart';

class TaskLIst extends StatelessWidget {
  const TaskLIst({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(left: 30, top: 40, right: 15),
      children: [
        TileList(),
        TileList(),
      ],
    );
  }
}
