import 'package:flutter/material.dart';
import 'package:flutter_exactcalcwithnavbar/pages/addition.dart';
import 'package:flutter_exactcalcwithnavbar/pages/division.dart';
import 'package:flutter_exactcalcwithnavbar/pages/multiplication.dart';
import 'package:flutter_exactcalcwithnavbar/pages/subtraction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final mypages=[Sub(),Add(),Mul(),Div()];
  int _myindex=0;
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
        appBar: AppBar(
        flexibleSpace: Container(
        decoration: BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [Color(0xffFBD3E9),Color(0xffBB377D)])
    ),
    ),
    title: Center(
    child: Text("CALCULATOR",
    style: TextStyle(color: Colors.black),)),
    ),
          body: mypages[_myindex],
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Color(0xffFBD3E9),Color(0xffBB377D)])
            ),
            child: BottomNavigationBar(
              iconSize: 20,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.black,
              selectedFontSize: 15,
              unselectedFontSize: 10,
              elevation: 50,
              backgroundColor: Colors.transparent,
              currentIndex: _myindex,
              type: BottomNavigationBarType.fixed,
              onTap: (index){
                setState(() {
                  _myindex=index;
                });
              },
                items: [
                  BottomNavigationBarItem(
                    title: Text("Subtraction"),
                      icon: Icon(Icons.arrow_back_ios)),
                  BottomNavigationBarItem(
                      title: Text("Add"),
                      icon: Icon(Icons.add)),
                  BottomNavigationBarItem(
                      title: Text("Multiplication"),
                      icon: Icon(Icons.clear)),
                  BottomNavigationBarItem(
                      title: Text("Division"),
                      icon: Icon(Icons.arrow_forward_ios)),

                ]),
          ),
    ));
  }
}
