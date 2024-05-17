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
      home: Header(),
    );
  }
}

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("タスク管理アプリ"),
      ),
      body: const Column(
        children: [
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.star),
                onPressed: null,
              ),
              TextButton(
                  onPressed: null,
                  child: Row(
                    children: [
                      Icon(Icons.add),
                      Text("新しいリスト"),
                    ],
                  )),
            ],
          )
        ],
      ),
    );
  }
}
