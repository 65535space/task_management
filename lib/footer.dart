import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  final VoidCallback onAddTask;
  const Footer({super.key, required this.onAddTask});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.blue),
        ),
      ),
      height: screenSize.height * 0.1,
      child: Row(
        children: [
          const Expanded(
            flex: 8,
            child: Row(
              children: [
                IconButton(onPressed: null, icon: Icon(Icons.list_alt)),
                IconButton(onPressed: null, icon: Icon(Icons.swap_vert)),
                IconButton(onPressed: null, icon: Icon(Icons.more_horiz)),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Center(
              child: FloatingActionButton(
                onPressed: onAddTask,
                child: const Icon(Icons.add),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
