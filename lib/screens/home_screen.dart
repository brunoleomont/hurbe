import 'package:flutter/material.dart';
import 'package:hurb/screens/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController _pageController;
  int _page = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueAccent,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _page,
          selectedItemColor: Colors.pinkAccent,
          showUnselectedLabels: true,
          unselectedItemColor: Colors.grey,
          unselectedFontSize: 11.0,
          onTap: (p) {
            _pageController.animateToPage(p,
                duration: Duration(milliseconds: 500), curve: Curves.ease);
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.near_me), title: Text('DESTAQUES')),
            BottomNavigationBarItem(
                icon: Icon(Icons.local_hotel), title: Text('HOTEIS')),
            BottomNavigationBarItem(
                icon: Icon(Icons.card_travel), title: Text('PACOTES')),
            BottomNavigationBarItem(
                icon: Icon(Icons.face), title: Text('PERFIL')),
            BottomNavigationBarItem(
                icon: Icon(Icons.more_horiz), title: Text('MAIS'))
          ],
        ),
        body: SafeArea(
          child: PageView(
            controller: _pageController,
            onPageChanged: (p) {
              setState(() {
                _page = p;
              });
            },
            children: <Widget>[
              Container(
                color: Colors.blue,
              ),
              Container(
                color: Colors.green,
              ),
              Container(
                color: Colors.yellow,
              ),
              ProfileScreen(),
              Container(
                color: Colors.purple,
              )
            ],
          ),
        ));
  }
}
