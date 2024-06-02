// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          SizedBox(height: 60),
          Align(
            alignment: Alignment.center,
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/lol.png',
                  width: 120,
                  height: 120,
                ),
                Positioned(
                  bottom: -10,
                  right: -14,
                  child: IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/images/edit.png"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
