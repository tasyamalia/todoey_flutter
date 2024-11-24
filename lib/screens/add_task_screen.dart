import 'package:flutter/material.dart';

class AddTaskScreen extends StatefulWidget {
  final Function(String) addTaskCallback;
  const AddTaskScreen({super.key, required this.addTaskCallback});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, color: Colors.lightBlueAccent),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              controller: textController,
            ),
            TextButton(
                style: TextButton.styleFrom(
                  shape: const RoundedRectangleBorder(),
                  backgroundColor: Colors.lightBlueAccent,
                  foregroundColor: Colors.lightBlueAccent,
                ),
                onPressed: () {
                  if (textController.text.isNotEmpty) {
                    widget.addTaskCallback(textController.text);
                  }
                },
                child: Text(
                  "Add",
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
