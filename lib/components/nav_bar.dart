import 'package:b4md_app/constant.dart';
import 'package:b4md_app/views/homepage.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

import '../views/calender.dart';
import '../views/heart_view.dart';
import '../views/user.dart';

class MyNevBar extends StatefulWidget {
  const MyNevBar({Key? key}) : super(key: key);
  @override
  State<MyNevBar> createState() => _MyNevBarState();
}
class _MyNevBarState extends State<MyNevBar> {
  int currentIndex = 0;

  List listOfColors = [
    const MyHomePage(),
    const HeartScreen(),
    const CalenderScreen(),
    const UserProfile(),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'B4MD',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: kDefaultBlueish,
        elevation: 3,
      ),
      body: listOfColors[currentIndex],
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: currentIndex,
        onItemSelected: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: const Center(child: Icon(Icons.home, color: Colors.black54)),
            title: const Center(
                child: Text('Home', style: TextStyle(color: Colors.black54))),
            activeColor: kDefaultBlueish,
            inactiveColor: Colors.black26,
          ),
          BottomNavyBarItem(
            icon: const Center(
                child: Icon(Icons.favorite_outline, color: Colors.black54)),
            title: const Center(
                child: Text('Heart', style: TextStyle(color: Colors.black54))),
            activeColor: kDefaultBlueish,
            inactiveColor: Colors.black26,
          ),
          BottomNavyBarItem(
            icon:
                const Center(child: Icon(Icons.calendar_month, color: Colors.black54)),
            title: const Center(
                child: Text('Calender', style: TextStyle(color: Colors.black54))),
            activeColor: kDefaultBlueish,
            inactiveColor: Colors.black26,
          ),
          BottomNavyBarItem(
            icon:
                const Center(child: Icon(Icons.person, color: Colors.black54)),
            title: const Center(
                child:
                    Text('Profile', style: TextStyle(color: Colors.black54))),
            activeColor: kDefaultBlueish,
            inactiveColor: Colors.black26,
          ),
        ],
      ),
    );
  }
}
