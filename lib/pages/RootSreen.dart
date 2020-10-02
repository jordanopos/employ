import 'package:emploi/pages/Applications.dart';
import 'package:emploi/pages/HomeScreen.dart';
import 'package:emploi/pages/Profile.dart';
import 'package:emploi/pages/SearchPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RootScreen extends StatefulWidget {
  @override
  _RootScreenState createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  bool isSignedIn = true;
  PageController pageController;
  int getPageIndex = 0;

  whenPageChanges(index) {
    setState(() {
      getPageIndex = index;
    });
  }

  Widget buildHomeScreen() {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        onPageChanged: whenPageChanges,
        controller: pageController,
        children: [
          HomeScreen(),
          ApplicationsScreen(),
        ],
      ),
      // bottomNavigationBar: CupertinoTabBar(
      //   border: null,
      //   backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      //   currentIndex: getPageIndex,
      //   onTap: (index) => pageController.jumpToPage(index),
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(FontAwesomeIcons.home),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(FontAwesomeIcons.search),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(FontAwesomeIcons.heart),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(FontAwesomeIcons.user),
      //     ),
      //   ],
      // ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(50),
          topLeft: Radius.circular(50),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          height: 90,
          child: Row(
            children: [
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Home',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        FontAwesomeIcons.solidCircle,
                        size: 10,
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Applications',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        FontAwesomeIcons.solidCircle,
                        size: 10,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buldSignIn() {
    return Scaffold();
  }

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return isSignedIn ? buildHomeScreen() : buldSignIn();
  }
}
