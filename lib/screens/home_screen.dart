import 'package:flutter/material.dart';

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
        backgroundColor: Colors.grey[850],
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
              canvasColor: Colors.white,
              primaryColor: Colors.pinkAccent,
              textTheme: Theme.of(context)
                  .textTheme
                  .copyWith(caption: TextStyle(color: Colors.pinkAccent))),
          child: BottomNavigationBar(
              currentIndex: _page,
              onTap: (p) {
                _pageController.animateToPage(p,
                    duration: Duration(milliseconds: 500), curve: Curves.ease);
              },
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.near_me, color: Colors.pinkAccent),
                    title: Text('DESTAQUES', style: TextStyle(color: Colors.pinkAccent))),
                BottomNavigationBarItem(
                    icon: Icon(Icons.local_hotel, color: Colors.pinkAccent),
                    title: Text("HOTEIS", style: TextStyle(color: Colors.pinkAccent))),
                BottomNavigationBarItem(
                    icon: Icon(Icons.card_travel, color: Colors.pinkAccent),
                    title: Text("PACOTES", style: TextStyle(color: Colors.pinkAccent))),
                BottomNavigationBarItem(
                    icon: Icon(Icons.face, color: Colors.pinkAccent),
                    title: Text("PERFIL", style: TextStyle(color: Colors.pinkAccent))),
                BottomNavigationBarItem(
                    icon: Icon(Icons.more_horiz, color: Colors.pinkAccent),
                    title: Text("MAIS", style: TextStyle(color: Colors.pinkAccent)))
              ]),
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
              Container(
                color: Colors.brown,
              ),
              Container(
                color: Colors.purple,
              )
            ],
          ),
        ));
  }
}
