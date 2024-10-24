import 'package:flutter/material.dart';
import 'package:saavi/pallete/colors_pallete.dart';
import 'package:saavi/screens/main_screen/bussiness.dart';
import 'package:saavi/screens/main_screen/help.dart';
import 'package:saavi/screens/main_screen/home.dart';
import 'package:saavi/screens/main_screen/profile.dart';

class NavigatorHelper extends StatefulWidget {
  const NavigatorHelper({super.key});

  @override
  State<NavigatorHelper> createState() => _NavigatorHelperState();
}

class _NavigatorHelperState extends State<NavigatorHelper> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    Bussiness(),
    Help(),
    Profile()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 35,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false, //selected item
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.business), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.help_rounded), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined), label: ''),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: ColorsPallete.primary,
        onTap: _onItemTapped,
      ),
    );
  }
}
