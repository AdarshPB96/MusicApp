import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:music_application_1/Screens/FavouritesScreen.dart';
import 'package:music_application_1/Screens/PlaylistScreen.dart';
import 'package:music_application_1/Screens/SearchScreen.dart';
import 'package:music_application_1/Screens/home.dart';
import 'package:music_application_1/widget/functions.dart';

class BottomNavBar extends StatefulWidget {
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentindex = 0;
  final screens = [
    HomeScreen(),
    SearchScreen(),
    PlaylistScreen(),
   
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(
          index: _currentindex,
          children: screens,
        ),
        bottomNavigationBar: FluidNavBar(
            // items: [
            //   BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            //   BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            //   BottomNavigationBarItem(
            //       icon: Icon(Icons.library_music), label: 'Playlist'),
            //   BottomNavigationBarItem(
            //       icon: Icon(Icons.favorite), label: 'Favourite'),
            // ]

            icons: [
              FluidNavBarIcon(
                  icon: Icons.home,
                  extras: {'label': 'Home'},
                  backgroundColor: Colors.red),
              FluidNavBarIcon(
                  icon: Icons.search,
                  extras: {
                    "label": "Search",
                  },
                  backgroundColor: Colors.red),
              FluidNavBarIcon(
                  icon: Icons.library_music,
                  extras: {'label': 'Playlist'},
                  backgroundColor: Colors.red),
             
            ],
            onChange: (int index) {
              setState(() {
                _currentindex = index;
              });
            },
            style:
                FluidNavBarStyle(iconUnselectedForegroundColor: Colors.white),
            scaleFactor: 1.5,
            // defaultIndex: _currentindex,
            itemBuilder: (icon, item) => Semantics(
                  label: icon.extras!["label"],
                  child: item,
                )));
  }
}
