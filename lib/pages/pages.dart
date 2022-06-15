import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:dpo_manager/pages/settings.dart';
import 'package:dpo_manager/pages/tasks.dart';
import 'package:dpo_manager/pages/timetable.dart';
import 'package:flutter/material.dart';

class Pages extends StatefulWidget {
  const Pages({Key? key}) : super(key: key);

  @override
  State<Pages> createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  int selectedPage = 0;
  final _pageNom = [
    const Tasks(),
    const TimeTable(),
    const Settings(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageNom[selectedPage],
      bottomNavigationBar: ConvexAppBar(
        disableDefaultTabController: true,
        backgroundColor: Colors.green,
        style: TabStyle.reactCircle,
        items: const [
          TabItem(icon: Icons.task, title: 'Tasks'),
          TabItem(icon: Icons.more_time, title: 'TimeTable'),
          TabItem(icon: Icons.settings, title: 'Settings'),
        ],
        initialActiveIndex: selectedPage,
        onTap: (int index) {
          setState(() {
            selectedPage = index;
          });
        },
      ),
    );
  }
}
