import 'package:flutter/material.dart';
import 'package:untitled/drawer_page.dart';

class HomePage extends StatefulWidget {
  static const String id = "drawer_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController _pageController;
  late int _selectIndex;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      drawer: const MySideBar(),
      appBar: AppBar(
        title: Text("Side Bar & Bottom NavBar"),
        centerTitle: true,
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (int index) {
          setState(() {
            _selectIndex = index;
          });
        },
        children: [
          Container(
            color: Colors.pink,
            child: const Center(
              child: Text(
                "PAGE 1",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            color: Colors.green,
            child: const Center(
              child: Text(
                "PAGE 2",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            color: Colors.black,
            child: const Center(
              child: Text(
                "PAGE 3",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "Account",
          ),
        ],
        currentIndex: _selectIndex,
        selectedItemColor: Colors.red,
        onTap: (int itemIndex) {
          setState(() {
            _selectIndex = itemIndex;
            _pageController.animateToPage(itemIndex,
                duration: Duration(milliseconds: 200), curve: Curves.easeIn);
          });
        },
      ),

    );
  }
}
