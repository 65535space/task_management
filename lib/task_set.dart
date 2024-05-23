import 'package:flutter/material.dart';
import 'task_widget.dart';

class TaskSet extends StatefulWidget {
  const TaskSet({super.key});

  @override
  TaskSetState createState() => TaskSetState();

  static TaskSetState? of(BuildContext context) {
    final state = context.findAncestorStateOfType<TaskSetState>();
    if (state == null) {
      debugPrint("TaskSetState is not found in the widget tree");
    }
    return state;
  }
}

class TaskSetState extends State<TaskSet> {
  List<Widget> taskList = [];

  void addTask(String taskName) {
    setState(() {
      taskList.add(TaskWidget(taskName: taskName));
    });
    debugPrint('Adding task: $taskName');
    debugPrint('Current tasks: ${taskList.length}');
  }

  @override
  void initState() {
    super.initState();
    debugPrint("TaskState initialized");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: taskList.length,
            itemBuilder: (context, index) {
              return taskList[index];
            },
          ),
        ),
      ],
    );
  }
}
