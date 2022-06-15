import 'package:flutter/material.dart';
import 'package:petgallerry/homePage.dart';
import 'package:petgallerry/settingsPage.dart';
import 'package:petgallerry/teamPage.dart';
import 'package:petgallerry/trainerPage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: BottomBar(),
    );
  }
}

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    TrainerScreen(),
    TeamScreen(),
    SettingsScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    int Data = 0;
    Widget child = Container();
    if (_selectedIndex == 0) {
      child = HomeScreen();
    } else if (_selectedIndex == 1) {
      child = TrainerScreen();
    } else if (_selectedIndex == 2) {
      child = TeamScreen();
    } else if (_selectedIndex == 3) {
      child = SettingsScreen();
    }
    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.adjust),
            label: 'Pokemons',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.accessibility_new_rounded),
            label: 'Trainers',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.electric_bolt),
            label: 'MyTeam',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.grey.shade700,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
