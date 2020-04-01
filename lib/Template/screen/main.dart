import 'package:flutter/material.dart';
import 'package:web_bi/Template/screen/home.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  PageController _pageController;
  int _page = 0;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () => null,
        child: Scaffold(
            body: PageView(
              physics: NeverScrollableScrollPhysics(),
              controller: _pageController,
              onPageChanged: onPageChanged,
              children: <Widget>[HomeScreen()],
            ),
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Theme.of(context).primaryColor,
              selectedItemColor: Theme.of(context).accentColor,
              unselectedItemColor: Colors.grey[500],
              elevation: 20,
              type: BottomNavigationBarType.fixed,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  title: SizedBox(),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.library_books),
                  title: SizedBox(),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.message),
                  title: SizedBox(),
                ),
              ],
              onTap: navigationTapped,
              currentIndex: _page,
            )));
  }

  void navigationTapped(int page) {
    _pageController.jumpToPage(page);
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  void onPageChanged(int page) {
    setState(() {
      this._page = page;
    });
  }
}
