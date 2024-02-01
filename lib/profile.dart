import 'package:flutter/material.dart';
class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 170),
      width: double.infinity,
      height: 350,

      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage("asset/1.jfif"),// Radius of the face
            // Color of the face
          ),
        ],
      ),
    );

  }
}
