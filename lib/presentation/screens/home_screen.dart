import 'package:flutter/material.dart';
import 'package:parcial/presentation/widgets/app_drawer.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Welcome to my app"),
        titleTextStyle: const TextStyle(backgroundColor: Color(0xFF5D00FF)),
        
      ),
      drawer: const AppDrawer(),
      body: Text("jaja"),
    );
  }
}