import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.orange,
          ),
        ),
        centerTitle: true,
        actions: [Icon(Icons.person)],
      ),
      body: Center(
        child: Text(
          "User Profile Details",
          style: TextStyle(fontSize: 20, color: Colors.grey),
        ),
      ),
    );
  }
}
