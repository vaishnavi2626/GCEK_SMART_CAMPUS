// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import './lostandfound.dart';

import 'forum.dart';

class help extends StatelessWidget {
  const help({super.key});

  // final User? user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 217, 194, 245),
        appBar: AppBar(title: Text('Help')),
        body: Center(
            child: Container(
          margin: EdgeInsets.only(top: 10),
          alignment: Alignment.center,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.asset("assets/images/help.jpg")),
              ),
              SizedBox(
                height: 60,
              ),
              SizedBox(
                height: 80,
                width: 200,
                child: Container(
                  width: 190,
                  height: 60,
                  padding: EdgeInsets.fromLTRB(4, 5, 4, 5),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Chat()));
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Color.fromARGB(255, 253, 252, 252), elevation: 10, backgroundColor: Color.fromARGB(255, 48, 147, 247),
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10.0),
                      side: BorderSide(
                          color: Color.fromARGB(255, 130, 217, 255), width: 0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                    ),
                    child: Text('Forum', style: TextStyle(fontSize: 30)),
                  ),
                ),
              ),
              SizedBox(height: 40),
              SizedBox(
                height: 80,
                width: 300,
                child: Container(
                  padding: EdgeInsets.fromLTRB(4, 5, 4, 5),
                  width: 200,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LostAndFound()));
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Color.fromARGB(255, 253, 252, 252), elevation: 10, backgroundColor: Color.fromARGB(255, 48, 147, 247),
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10.0),
                      side: BorderSide(
                          color: Color.fromARGB(255, 130, 217, 255), width: 0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                    ),
                    child:
                        Text('Lost And Found', style: TextStyle(fontSize: 30)),
                  ),
                ),
              )
            ],
          ),
        )));
  }
}
