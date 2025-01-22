import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:homework2/assets/constants.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({super.key});

  @override
  _CustomNavigationBarState createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });

    final currentRoute = ModalRoute.of(context)?.settings.name;

    if (index == 0 && currentRoute != '/home') {
      Navigator.pushNamed(context, '/home');
    } else if (index == 1 && currentRoute != '/search') {
      Navigator.pushNamed(context, '/search');
    } else if (index == 2 && currentRoute != '/create-recipe') {
      Navigator.pushNamed(context, '/create-recipe');
    } else if (index == 3 && currentRoute != '/stored') {
      Navigator.pushNamed(context, '/stored');
    } else if (index == 4 && currentRoute != '/profile') {
      Navigator.pushNamed(context, '/profile');
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentRoute = ModalRoute.of(context)?.settings.name;

    setState(() {
      if (currentRoute == '/home') {
        _currentIndex = 0;
      } else if (currentRoute == '/search') {
        _currentIndex = 1;
      } else if (currentRoute == '/create-recipe') {
        _currentIndex = 2;
      } else if (currentRoute == '/stored') {
        _currentIndex = 3;
      } else if (currentRoute == '/profile') {
        _currentIndex = 4;
      }
    });

    return Stack(
      alignment: Alignment.bottomCenter,
      clipBehavior: Clip.none,
      children: [
        BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColor100,
          unselectedItemColor: Colors.grey,
          currentIndex: _currentIndex,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          elevation: 0,
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.house),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.magnifyingGlass),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: SizedBox.shrink(),
              label: "Create",
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.solidBookmark),
              label: "Saved",
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.solidUser),
              label: "Profile",
            ),
          ],
        ),
        Positioned(
          bottom: 10,
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/create-recipe');
            },
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.orange,
              ),
              child: Center(
                child: Icon(
                  FontAwesomeIcons.plus,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
