import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/models/taskData.dart';

String text;

class AddScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Add Task',
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30.0,
              ),
            ),
            Flexible(
              child: SizedBox(
                height: 20.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: TextField(
                autofocus: true,
                onChanged: (value) {
                  text = value;
                },
              ),
            ),
            Flexible(
              child: SizedBox(
                height: 40.0,
              ),
            ),
            Material(
              color: Colors.lightBlueAccent,
              child: MaterialButton(
                onPressed: () {
                  Provider.of<TaskData>(context, listen: false).addTask(text);
                  Navigator.pop(context);
                },
                child: Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
