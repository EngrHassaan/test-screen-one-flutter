import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'info_screen.dart';
import 'string_data.dart';
import 'user_screen.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.appTitle,
      theme: ThemeData(),
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
      int _currentIndex = 1;
  final List<Widget> _children = [
    MainHome(),
    InfoScreen(),
    UserScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.border_left_outlined)),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu_open,
              color: Colors.white,
              size: 30.0,
            ),
          ),
        ],
        backgroundColor: Colors.grey[800],
      ),
      body: 
      _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Info'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'User Profile',
          )
        ],
      ),
    );   
  }
 void onTabTapped(int index) {
   setState(() {
     _currentIndex = index;
   });
 }  
}