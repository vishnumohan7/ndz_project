import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:ndz_project/src/fragments/cart_fragment.dart';
import 'package:ndz_project/src/fragments/category_fragment.dart';
import 'package:ndz_project/src/fragments/home_fragment.dart';
import 'package:ndz_project/src/fragments/profile_fragment.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  List<Widget> fragments = [
    HomeFragment(),
    CategoryFragment(),
    CartFragment(),
    ProfileFragment()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NDZ APP"), backgroundColor: Colors.blue,

        leading: Icon(Icons
            .menu_outlined), // used for the main left leading icon/image or any element
        actions: [
          Center(child: FaIcon(FontAwesomeIcons.user)),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.add),
          SizedBox(width: 16), //used for giving space b/n icons
          Icon(Icons.help)
        ],
        centerTitle: true, //used for centering the title text
        shadowColor: Colors.black,
        elevation: 10,
      ),
      body: SafeArea(
        child: Center(child: fragments[selectedIndex]),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(Icons.phone),
        onPressed: () {},
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueAccent,
        currentIndex: selectedIndex,
        unselectedItemColor: Colors.black38,
        selectedItemColor: Colors.green,
        showUnselectedLabels: true,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: "Category",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "Account",
          )
        ],
      ),
    );
  }
}
