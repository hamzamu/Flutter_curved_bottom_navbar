import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'Screens/firstScreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late int currentScreen = 0;
  //
  final Screens = [FirstScreen(), SecondScreen(), ThirdScreen()];

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Screens[currentScreen],
      bottomNavigationBar: CurvedNavigationBar(
          color: Colors.amberAccent,
          // buttonBackgroundColor: Colors.amber,
          animationCurve: Curves.easeIn,
          animationDuration: Duration(milliseconds: 200),
          backgroundColor: Colors.amber,
          onTap: (index) {
            // print(index);
            setState(() {
              currentScreen = index;
            });
          },
          items: [
            Container(
              child: Icon(
                Icons.home,
                color: Colors.white,
              ),
            ),
            Icon(
              Icons.add,
              color: Colors.white,
            ),
            Icon(
              Icons.settings,
              color: Colors.white,
            )
          ]),
    );
  }
}
