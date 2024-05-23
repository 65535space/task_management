import 'package:flutter/material.dart';

class TaskListPage extends StatelessWidget {
  const TaskListPage({super.key});

  @override
  Widget build(BuildContext context) {
    double footerHeight = MediaQuery.of(context).size.height;

    return Container(
      color: const Color.fromARGB(255, 121, 121, 121),
      height: footerHeight,
    );
  }
}

class TaskSet extends StatefulWidget {
  const TaskSet({super.key});

  @override
  TaskSetState createState() => TaskSetState();

  static TaskSetState? of(BuildContext context) {
    return context.findAncestorStateOfType<TaskSetState>();
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
