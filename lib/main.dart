import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
import 'footer.dart';
import 'horaizontal_task_list.dart';
import 'task_set.dart';

void main() {
  // debugPaintSizeEnabled = true;
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'タスク管理アプリ',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<TaskSetState> taskSetKey = GlobalKey<TaskSetState>();
    debugPrint('MyHomePage build method called');
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("タスク管理アプリ"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HoraizontalTaskList(),
          Expanded(
              child: TaskSet(
            key: taskSetKey,
          )),
        ],
      ),
      bottomNavigationBar: Footer(
        onAddTask: () {
          debugPrint('onAddTask called');
          var taskSetState = taskSetKey.currentState;
          if (taskSetState != null) {
            taskSetState.addTask("hoge");
            debugPrint("task added");
            debugPrint(taskSetState.toString());
          } else {
            // taskSetStateがnullの場合の処理
            debugPrint('TaskSetState is null');
          }
        },
      ),
    );
  }
}
