import 'package:employees_app_bottomnavbar/Entry/ENTRY.dart';
import 'package:employees_app_bottomnavbar/Entry/ViewAll.dart';
import 'package:employees_app_bottomnavbar/Entry/employee%20SEARCH.dart';
import 'package:flutter/material.dart';

void main() => runApp(NavbarApp());

class NavbarApp extends StatefulWidget {
  const NavbarApp({Key? key}) : super(key: key);

  @override
  State<NavbarApp> createState() => _NavbarAppState();
}

class _NavbarAppState extends State<NavbarApp> {

  int _mycurrenntindex = 0;
  List mypages = [ENTRY(), EmployeeSearch(), ViewAll()];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:
        mypages[_mycurrenntindex],

        bottomNavigationBar: BottomNavigationBar(
            iconSize: 32,
            backgroundColor: Colors.yellowAccent,
            onTap: (index) {
              setState(() {
                _mycurrenntindex = index;
              });
            },


            currentIndex: _mycurrenntindex,
            items: [

              BottomNavigationBarItem(icon: Icon(Icons.add_to_drive),
                  label: "ENTRY"),

              BottomNavigationBarItem(icon: Icon(Icons.search_sharp),
                  label: "SEARCH"),

              BottomNavigationBarItem(icon: Icon(Icons.view_list_rounded),
                  label: "VIEW")

            ]),
      ),
    );
  }
}
