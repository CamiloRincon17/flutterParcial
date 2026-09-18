import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  const UserCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Mi profile"),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(32)),
                side: BorderSide(color: Colors.blue)
              ),
              elevation: 30,
              child: Padding(padding: EdgeInsets.all(68),
              child: Text("Adrian Camilo Rincón Ascanio"),
              ),
            )
          ],
        ),
      ),
    );
  }
}