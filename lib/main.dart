import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'タスク管理アプリ',
      home: MyAppScaffold(),
    );
  }
}

class MyAppScaffold extends StatelessWidget {
  const MyAppScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("タスク管理アプリ"),
      ),
      body: const Column(
        children: [
          TaskListButton(),
        ],
      ),
    );
  }
}

class TaskListButton extends StatefulWidget {
  const TaskListButton({super.key});

  @override
  TaskListButtonState createState() => TaskListButtonState();
}

class TaskListButtonState extends State<TaskListButton> {
  List<Widget> buttons = [];

  void addButton() {
    setState(() {
      buttons.add(
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(0, 255, 255, 255),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
            elevation: 0,
          ),
          child: Text("${buttons.length + 1}"),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const IconButton(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            icon: Icon(Icons.star),
            iconSize: 25,
            onPressed: null,
          ),
          ...buttons,
          TextButton(
            onPressed: () {
              addButton();
            },
            child: const Row(
              children: [
                Icon(Icons.add),
                Text("新しいリスト"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
