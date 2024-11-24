import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function(bool) toggleCheckboxState;
  final Function() longPressCallback;
  const TaskTile(
      {super.key,
      required this.isChecked,
      required this.taskTitle,
      required this.toggleCheckboxState,
      required this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            color: Colors.black,
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: (bool? newValue) {
          toggleCheckboxState(newValue ?? false);
        },
      ),
      onLongPress: () {
        longPressCallback();
      },
    );
  }
}
