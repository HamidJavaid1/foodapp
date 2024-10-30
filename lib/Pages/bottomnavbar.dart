import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/Pages/home.dart';
import 'package:foodapp/Pages/orderprofile.dart';
import 'package:foodapp/Pages/profile.dart';
import 'package:foodapp/Pages/wallet.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int current_tab = 0;
  late List<Widget> pages;
  late Widget currentpage;
  late Home homepage;
  late Profile profile;
  late orderProfile orderProfiles;
  late wallet wallets;
  @override
  void initState() {
    homepage = Home();
    profile = Profile();
    orderProfiles = orderProfile();
    wallets = wallet();
    pages = [homepage, orderProfiles, wallets, profile];
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 65,
        backgroundColor: Colors.white,
        color: Colors.black,
        animationDuration: Duration(milliseconds: 500),
        onTap: (int index) {
          setState(() {
            current_tab = index;
          });
        },
        items: [
          Icon(
            Icons.home_outlined,
            color: Colors.white,
          ),
          Icon(
            Icons.shopping_bag_outlined,
            color: Colors.white,
          ),
          Icon(
            Icons.wallet_outlined,
            color: Colors.white,
          ),
          Icon(
            Icons.person_outline,
            color: Colors.white,
          )
        ],
      ),
      body: pages[current_tab],
    );
  }
}
