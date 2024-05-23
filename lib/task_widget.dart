import 'package:flutter/material.dart';

class TaskWidget extends StatefulWidget {
  final String taskName;

  const TaskWidget({super.key, required this.taskName});

  @override
  TaskWidgetState createState() => TaskWidgetState();
}

class TaskWidgetState extends State<TaskWidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(
        value: isChecked,
        onChanged: (bool? value) {
          setState(() {
            isChecked = value!;
          });
        },
      ),
      title: Text(widget.taskName),
    );
  }
}
