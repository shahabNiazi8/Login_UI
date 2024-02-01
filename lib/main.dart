import 'package:flutter/material.dart';
import 'package:insta_app/appBar.dart';
import 'package:insta_app/profile.dart';
import 'package:insta_app/Login.dart';


void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.indigo[700],
        body: ListView(
          children: [
            Stack(
              children: [
                Mylogin(),
                MyProfile(),

                MyAppBar(),
                Padding(
                  padding: const EdgeInsets.only(top: 120),
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                        color: Colors.white60,
                      ),
                      width: 375,
                      height: 8,

                    ),
                  ),
                ),


              ],
            )
          ],
        ),
      ),

    );
  }
}



