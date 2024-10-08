import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddTask extends StatelessWidget {
  Function onPressed;
  AddTask({required this.onPressed});

  TextEditingController _textController = TextEditingController();
  String? newTaskText;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.lightBlueAccent, fontSize: 25),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              onChanged: (value) {
                newTaskText = value;
              },
              onEditingComplete: () {
                newTaskText = _textController.text;
                if (_textController.text.isNotEmpty) {
                  print('YYYYYYYYYYYY');
                }
              },
              autofocus: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.lightBlueAccent,
                      ),
                      borderRadius: BorderRadius.circular(20))),
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {
                onPressed(newTaskText);
              },
              child: Text('Add'),
              style: ButtonStyle(
                  backgroundColor:
                      WidgetStateProperty.all<Color>(Colors.lightBlueAccent)),
            )
          ],
        ),
      ),
    );
  }
}
