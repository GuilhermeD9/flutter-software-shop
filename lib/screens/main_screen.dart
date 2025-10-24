import 'package:flutter/material.dart';
import 'package:memobile/screens/my_licenses_screen.dart';
import 'package:memobile/screens/home_screen.dart';
import 'package:memobile/screens/my_account_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    MyLicensesScreen(),
    MyAccountScreen(),
  ];

  static const List<String> _widgetTitles = <String> [
    'Catálogo',
    'Minhas Licenças',
    'Minha Conta',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.apps),
            label: 'Catálogo',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history_toggle_off),
            label: 'Minhas Licenças',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Minha Conta',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.deepPurpleAccent[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
