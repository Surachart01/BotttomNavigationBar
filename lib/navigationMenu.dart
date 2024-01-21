import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:navigationbar/data.dart';
import 'package:navigationbar/home.dart';

class NavigationBarMe extends StatefulWidget {
  const NavigationBarMe({super.key});

  @override
  State<NavigationBarMe> createState() => _NavigationBarMeState();
}

class _NavigationBarMeState extends State<NavigationBarMe> {
  int _selectedIndex = 0;
  final List<Widget> _page = const [
      Home(), 
      Data()
    ];

  void onTabChange(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _page[_selectedIndex],
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GNav(
              selectedIndex: _selectedIndex,
              onTabChange: onTabChange,
              tabBackgroundColor: Color.fromARGB(255, 127, 127, 127),
              padding: EdgeInsets.all(10),
              tabs: const [
                GButton(
                gap: 10,
                icon: Icons.home,
                text: "Home",
                iconColor: Colors.white,
                iconActiveColor: Colors.white,
                textColor: Colors.white,
                margin: EdgeInsets.only(left: 80),
              ),
                GButton(
                gap: 10,
                icon: Icons.people_alt_outlined,
                text: "Information",
                iconColor: Colors.white,
                iconActiveColor: Colors.white,
                textColor: Colors.white, 
                
                margin: EdgeInsets.only(right: 80),
              ),
              ],backgroundColor: Colors.black,),
        ),
      ),
    );
  }
}
