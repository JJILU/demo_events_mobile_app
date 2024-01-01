import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int index = 0;

  final screens = const [
    Center(
      child: Text(
        'Home',
        style: TextStyle(
          fontSize: 72,
        ),
      ),
    ),
    Center(
      child: Text(
        'Search',
        style: TextStyle(
          fontSize: 72,
        ),
      ),
    ),
    Center(
      child: Text(
        'Favorite',
        style: TextStyle(
          fontSize: 72,
        ),
      ),
    ),
    Center(
      child: Text(
        'Tickets',
        style: TextStyle(
          fontSize: 72,
        ),
      ),
    ),
    Center(
      child: Text(
        'Profile',
        style: TextStyle(
          fontSize: 72,
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: const Color(0xffFFC436),
          labelTextStyle: MaterialStateProperty.all(
            const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        child: NavigationBar(
          // height: 60,
          // backgroundColor: const Color(0xffFFC436),
          selectedIndex: index,
          onDestinationSelected: (index) => setState(() => this.index = index),
          destinations: const [
            NavigationDestination(
              icon: Icon(
                Icons.home,
              ),
              label: "Home",
            ),
            NavigationDestination(
              icon: Icon(
                Icons.search,
              ),
              label: "Search",
            ),
            NavigationDestination(
              icon: Icon(
                Icons.favorite,
              ),
              label: "Favorite",
            ),
            NavigationDestination(
              icon: Icon(
                Icons.mobile_friendly,
              ),
              label: "Tickets",
            ),
            NavigationDestination(
              icon: Icon(
                Icons.person,
              ),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
