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
