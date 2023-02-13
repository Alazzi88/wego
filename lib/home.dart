// ignore_for_file: prefer_const_constructors

import 'dart:ffi';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:wego/color.dart';
import 'package:wego/count.dart';
import 'package:wego/search.dart';
import 'package:wego/share.dart';
import 'package:wego/test.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Test(),
    );
  }
}

class Wego extends StatelessWidget {
  const Wego({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: black,
        items: const [
          CurvedNavigationBarItem(
            child: Icon(
              Icons.home_outlined,
              color: green,
              size: 27,
            ),
            label: 'Home',
            labelStyle:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          CurvedNavigationBarItem(
            child: Icon(
              Icons.search,
              color: green,
              size: 27,
            ),
            label: 'Search',
            labelStyle:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          CurvedNavigationBarItem(
            child: Icon(
              Icons.add,
              color: green,
              size: 27,
            ),
            label: 'Add',
            labelStyle:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          CurvedNavigationBarItem(
            child: Icon(
              Icons.favorite,
              color: green,
              size: 22,
            ),
            label: 'Favorite',
            labelStyle:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          CurvedNavigationBarItem(
            child: Icon(
              Icons.person,
              color: green,
              size: 27,
            ),
            label: 'Profile',
            labelStyle:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
        onTap: (index) {
          //  Navigator.push(
          //               context,
          //               MaterialPageRoute(builder: (context) => const Test()),
          //             );
          // Handle button tap
        },
      ),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 200,
                child: Material(
                  borderRadius: BorderRadius.circular(22),
                  elevation: 5,
                  child: Image.asset(
                    "assets/img/wego.jpeg",
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                "ezzo",
                style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.w900,
                    color: black,
                    fontFamily: "google"),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Test()),
                  );
                    },
                    child: Container(
                      width: 180,
                      height: 120,
                      decoration: BoxDecoration(
                        color: black,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: const [
                            Icon(
                              Icons.bed,
                              size: 44,
                              color:green,
                            ),
                            Text(
                              "فنادق ",
                              style: TextStyle(
                                  fontSize: 33,
                                  color: Color.fromARGB(255, 253, 253, 253)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 33,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Search()),
                      );
                    },
                    child: Container(
                      width: 180,
                      height: 120,
                      decoration: BoxDecoration(
                        color: black,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: const [
                            Icon(
                              Icons.airplanemode_active,
                              size: 44,
                              color:green,
                            ),
                            Text(
                              "طيران ",
                              style:
                                  TextStyle(fontSize: 33, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 22,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                         Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Test()),
                      );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 130,
                          height: 50,
                          decoration: BoxDecoration(
                            color: black,
                            borderRadius: BorderRadius.circular(55),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.local_activity_rounded,
                                  size: 33,
                                  color:green,
                                ),
                                SizedBox(
                                  width: 22,
                                ),
                                Text(
                                  "أنشطة",
                                  style: TextStyle(
                                      fontSize: 22, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                         Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Test()),
                      );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 130,
                          height: 50,
                          decoration: BoxDecoration(
                            color: black,
                            borderRadius: BorderRadius.circular(55),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.travel_explore,
                                  size: 33,
                                  color: green,
                                ),
                                SizedBox(
                                  width: 22,
                                ),
                                Text(
                                  "البرامج ",
                                  style: TextStyle(
                                      fontSize: 22, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                         Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Test()),
                      );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 130,
                          height: 50,
                          decoration: BoxDecoration(
                            color: black,
                            borderRadius: BorderRadius.circular(55),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.discount,
                                  size: 33,
                                  color: green,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "العروض",
                                  style: TextStyle(
                                      fontSize: 22, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                         Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Test()),
                      );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 130,
                          height: 50,
                          decoration: BoxDecoration(
                            color: black,
                            borderRadius: BorderRadius.circular(55),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.report_gmailerrorred,
                                  size: 33,
                                  color: green,
                                ),
                                SizedBox(
                                  width: 22,
                                ),
                                Text(
                                  "تقرير",
                                  style: TextStyle(
                                      fontSize: 22, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                           Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Test()),
                      );
                        },
                        child: Material(
                          
                          elevation: 5,
                          borderRadius: BorderRadius.circular(22),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(33),
                              ),
                              width: 390,
                              child: Column(
                                children: [
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(44),
                                      child:
                                          Column(
                                            children: [
                                              Image.asset("assets/img/Italy.jpeg"),
                                              SizedBox(height: 22,),
                                              Container(
                                                
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(22),
                                                  color:green
                                                ),
                                                width: 95,
                                                child: Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Center(
                                                    child: Row(
                                                      children: const [
                                                        Text("Roma",style: TextStyle(
                                                          color: white,
                                                        ),),
                                                        SizedBox(width: 12,),
                                                        Icon(Icons.location_on_outlined,color: white,),
                                                      ],
                                                    ),
                                                  ),
                                                )),
                                            ],
                                          )),
                                          
                                  const SizedBox(
                                    height: 33,
                                  ),
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(44),
                                      child:
                                          Image.asset("assets/img/madrid.jpeg")),
                                  const SizedBox(
                                    height: 33,
                                  ),
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(44),
                                      child: Image.asset("assets/img/turk.jpeg")),
                                  const SizedBox(
                                    height: 33,
                                  ),
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(44),
                                      child:
                                          Image.asset("assets/img/paris.jpeg")),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Test()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    green,
                  ),
                  padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22))),
                ),
                child: SizedBox(
                  width: 200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.call,
                        size: 33,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 33,
                      ),
                      Text(
                        "للتواصل معنا ",
                        style: TextStyle(fontSize: 22),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 33,
              ),
            ],
          )),
    );
  }
}
