import 'package:flutter/material.dart';
import 'first_page_and_button.dart';

class HoraizontalTaskList extends StatefulWidget {
  const HoraizontalTaskList({super.key});

  @override
  HoraizontalTaskListState createState() => HoraizontalTaskListState();
}

class HoraizontalTaskListState extends State<HoraizontalTaskList> {
  List<Widget> buttons = [
    const FirstPageButton(),
  ];

  List<Widget> pages = [];

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

  // void addPage() {
  //   setState(() {
  //     pages.add();
  //   });
  // }

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
