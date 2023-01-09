import 'package:flutter/material.dart';
import 'package:untitled/EarRing.dart';
// import 'package:flutter/widgets.dart';
import 'package:untitled/Info.dart';
import 'package:untitled/Necklace.dart';
import 'package:untitled/add.dart';

import 'Ring.dart';



class Home extends StatefulWidget {


  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  final tabs = [
    Info(),
    Ring(),
    Necklace(),
    EarRing(),
    Add(),
    //Center(child: Text("Add")),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("images/logo.png"),
        title: Text("R.P. Jewellers"),
        backgroundColor: Color(0xff4949e6),
      ),
      body:

      tabs[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          backgroundColor: Color(0xff4949e6),

          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Color(0xff4949e6),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.hearing),
              label: "Ring",
              backgroundColor: Color(0xff4949e6),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Necklace",
              backgroundColor: Color(0xff4949e6),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.earbuds),
              label: "Ear Ring",
              backgroundColor: Color(0xff4949e6),
            ),
           /* BottomNavigationBarItem(
              icon: Icon(Icons.linear_scale_outlined),
              label: "Chain",
              backgroundColor: Color(0xff4949e6),
            ),*/
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: "Add",
              backgroundColor: Color(0xff4949e6),
            ),

          ],
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        )
    );

  }
}
