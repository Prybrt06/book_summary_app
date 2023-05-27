import 'package:book_app/screens/Home%20Screen/Home/account_page.dart';
import 'package:book_app/screens/Home%20Screen/Home/favourites_page.dart';
import 'package:book_app/screens/Home%20Screen/Home/home_page.dart';
import 'package:book_app/screens/Home%20Screen/Home/search_page.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Widget> _pages = [
    HomePage(),
    FavouritePage(),
    SearchPage(),
    AccountPage(),
  ];

  int activeIndex = 0;

  void _selectPage(int index) {
    setState(() {
      activeIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Book Summary"),
      ),
      body: _pages[activeIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: activeIndex,
        onTap: _selectPage,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            activeIcon: Icon(
              Icons.home_filled,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border,
            ),
            activeIcon: Icon(
              Icons.favorite,
            ),
            label: 'Favourites',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search_outlined,
            ),
            activeIcon: Icon(
              Icons.search,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_2_outlined,
            ),
            activeIcon: Icon(
              Icons.person_2_sharp,
            ),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
