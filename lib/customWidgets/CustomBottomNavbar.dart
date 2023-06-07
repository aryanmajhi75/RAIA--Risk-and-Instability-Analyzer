import 'package:flutter/material.dart';
import 'package:raia/pages/globalThreats.dart';
import 'package:raia/pages/statisticalAnalysis.dart';
import 'package:raia/pages/vicinityRisks.dart';

import '../constants.dart';
import '../pages/settings.dart';

class customBottomNavbar extends StatefulWidget {
  const customBottomNavbar({
    super.key,
  });

  @override
  State<customBottomNavbar> createState() => _customBottomNavbarState();
}

class _customBottomNavbarState extends State<customBottomNavbar> {
  int _selectedIndex = 0;

  void _navigation(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const GlobalThreats(),
    const VicinityRisks(),
    StatisticalAnalysis(),
    const Settings()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(
          top: 0,
          bottom: 20,
          left: 10,
          right: 10,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: darkColor,
            width: 2,
            strokeAlign: BorderSide.strokeAlignOutside,
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: 1,
              color: greyColor,
              spreadRadius: 2,
              offset: const Offset(
                0,
                3,
              ),
            ),
          ],
          borderRadius: BorderRadius.circular(20),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BottomNavigationBar(
            elevation: 0,
            currentIndex: _selectedIndex,
            onTap: _navigation,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.public),
                label: "Global Threats",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.radar),
                label: "Vicinity Risks",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.analytics),
                label: "Statistical Analysis",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "Settings",
              )
            ],
            backgroundColor: Colors.transparent,
          ),
        ),
      ),
    );
  }
}
