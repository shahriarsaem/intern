import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:intern_developer_test_project/screens/miniTask2.dart';

import 'miniTask.dart';
import 'dart:math' as math;
import 'package:google_fonts/google_fonts.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromARGB(255, 26, 137, 93),
                      Color(0xff07463E)
                    ],
                  ),
                ),
                padding: EdgeInsets.only(
                    top: 15.0, left: 30.0, right: 30.0, bottom: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Hi, Habib ',
                                  style: GoogleFonts.inter(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                                Transform.rotate(
                                  angle: math.pi / 90,
                                  child: Icon(
                                    Icons.waving_hand_sharp,
                                    color: Colors.yellow,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "Let's explore your notes",
                              style: GoogleFonts.inter(
                                color: Colors.white,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                            'https://www.shutterstock.com/image-photo/young-handsome-man-beard-wearing-260nw-1768126784.jpg',
                          ),
                          radius: 25.0,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Container(
                        height: 140,
                        decoration: BoxDecoration(
                          color: Colors.white12,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15, left: 10.0),
                          child: Container(
                            width: double.infinity,
                            child: Stack(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Welcome to TickTick Task',
                                      style: GoogleFonts.inter(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white),
                                    ),
                                    SizedBox(
                                      height: 15.0,
                                    ),
                                    Text(
                                      "Your one-stop app for task management. Simplify,",
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white),
                                    ),
                                    Text(
                                      "track, and accomplish tasks with ease",
                                      style: GoogleFonts.inter(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                                Positioned(
                                  top: 80,
                                  child: GestureDetector(
                                    onTap: (() {}),
                                    child: Container(
                                      padding: EdgeInsets.all(5.0),
                                      width: 109,
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(36, 150, 109, 1),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(50.0),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.play_arrow,
                                            color: Colors.white,
                                          ),
                                          SizedBox(
                                            width: 3.0,
                                          ),
                                          Text(
                                            'Watch Video',
                                            style: GoogleFonts.inter(
                                              color: Colors.white,
                                              fontSize: 11,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 200,
                                  top: 38,
                                  child: Image(
                                    image: AssetImage('assets/images/todo.png'),
                                    height: 100,
                                    width: 110,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Reminder Task',
                            style: GoogleFonts.inter(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            'See all',
                            style: GoogleFonts.inter(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 280,
            left: 15,
            bottom: 280,
            right: 0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                MiniTask(
                  taskColor: Colors.yellow,
                  taskText: 'Online Class Routine',
                ),
                MiniTask(
                  taskColor: Colors.blue,
                  taskText: 'Office Work List',
                ),
                MiniTask(
                  taskColor: Colors.green,
                  taskText: 'Day Task',
                ),
              ],
            ),
          ),
          Positioned(
            top: 350,
            left: 35,
            bottom: 200,
            right: 32,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'All Tasks',
                  style: GoogleFonts.inter(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
                Text(
                  'See all',
                  style: GoogleFonts.inter(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 500,
            bottom: 0,
            left: 0,
            right: 0,
            child: ListView(
              children: [
                MiniTask2(),
                MiniTask2(),
                MiniTask2(),
                MiniTask2(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
