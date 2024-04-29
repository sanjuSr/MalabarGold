import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:malabargold/LOGIN/login.dart';
import 'package:malabargold/PAGES/Homescreen.dart';


class homee extends StatefulWidget {
  const homee({Key? key}) : super(key: key);

  @override
  State<homee> createState() => _HomeeState();
}

class _HomeeState extends State<homee> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Homescreen(),
    Login(),
    Placeholder(), // Placeholder for the third page
    Placeholder(),
    Placeholder(),// Placeholder for the fourth page
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          selectedLabelStyle: const TextStyle(),
          unselectedLabelStyle: const TextStyle(),
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          backgroundColor: Color.fromARGB(255, 95, 31, 65),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.medical_information),
              label: 'Price Check',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Gold Rates',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Store Locator',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'My Account',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.yellow[300],
          unselectedItemColor: Colors.white,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}


