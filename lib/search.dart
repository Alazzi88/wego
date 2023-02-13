import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            width: double.infinity,
            height: 350,
            // decoration:  BoxDecoration(color: Colors.amber,borderRadius: BorderRadius.circular(33)),
            child: Row(
              children: const [
                 Form(
                   child: TextField(
                  decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Email : ",
                hintStyle: TextStyle(fontSize: 19),
                prefixIcon: Icon(Icons.person),
              ))),
                 
              ],
            ),
          ),
        ),
      ),
    );
  }
}