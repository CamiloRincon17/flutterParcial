import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  const UserCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      elevation: 40,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Text("My personal information "),
      ),
    );
  }
}