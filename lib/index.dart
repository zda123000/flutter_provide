import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart'; //IOS风格
import 'first.dart';
import 'second.dart';

class IndexPage extends StatefulWidget {

  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  final List<BottomNavigationBarItem> bottomTabs = [
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.home),
      title: Text('第一个页面')
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.profile_circled),
      title: Text('第二个页面')
    ),
  ];

  final List tabBodies = [
    FitstPage(),
    SecondPage()
  ];

  int currentIndex = 0;
  var currentPage;

  @override
  void initState() {
    // TODO: implement initState
    currentPage =tabBodies[currentIndex];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        items: bottomTabs,
        onTap: (index) {
          setState(() {
           currentIndex = index;
           currentPage =tabBodies[currentIndex]; 
          });
        },
      ),
      body: currentPage,
    );
  }
}
