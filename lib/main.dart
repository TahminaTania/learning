import 'package:flutter/material.dart';
import 'package:learning/screens/menu.dart';
import 'package:learning/screens/page1.dart';
import 'package:learning/screens/page2.dart';
import 'package:learning/screens/page3.dart';
import 'package:learning/screens/flexible_space_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
            length: 3,
            child: SafeArea(
              child: Scaffold(
                  appBar: AppBar(
                      backgroundColor: Colors.blue,
                      title: const TabBar(
                        tabs: [
                          Tab(icon: Icon(Icons.home)),
                          Text("Learning"),
                          Tab(icon: Icon(Icons.menu))
                        ],
                      )),
                  body: const TabBarView(
                    children: [
                      FlexSpaceBar(),
                      HomePage(),
                      Menu(),
                    ],
                  )
                  // body: HomePage()),
                  ),
            )));
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomePage> {
  var currIndex = 0;
  final pages = [const Page1(), const Page2(), const Page3()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.blue[900],
        unselectedItemColor: Colors.white,
        currentIndex: currIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: "mail",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: "mail"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "mail"),
        ],
        onTap: (index) {
          setState(() {
            currIndex = index;
          });
        },
      ),
    );
  }
}
