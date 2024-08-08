import 'package:flutter/material.dart';

class TileList extends StatelessWidget {
  const TileList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Buy Milk'),
      trailing: Checkbox(value: false, onChanged: (bool) {}),
    );
  }
}
