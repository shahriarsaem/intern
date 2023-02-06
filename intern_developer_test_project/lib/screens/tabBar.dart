import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intern_developer_test_project/screens/task.dart';

class TabBarDemo extends StatefulWidget {
  const TabBarDemo({super.key});

  @override
  State<TabBarDemo> createState() => _TabBarDemoState();
}

class _TabBarDemoState extends State<TabBarDemo> {
  List<Widget> pages = [
    TaskScreen(),
    TaskScreen(),
    TaskScreen(),
    TaskScreen(),
    TaskScreen(),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          iconSize: 30,
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Color.fromRGBO(4, 46, 43, 1),
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Color.fromRGBO(4, 46, 43, 1),
                ),
                label: "Booking"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.video_call,
                  color: Color.fromRGBO(4, 46, 43, 1),
                ),
                label: "Cruise"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.label,
                  color: Color.fromRGBO(4, 46, 43, 1),
                ),
                label: "Cruise"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                  color: Color.fromRGBO(4, 46, 43, 1),
                ),
                label: "Account"),
          ]),
    );
  }
}
