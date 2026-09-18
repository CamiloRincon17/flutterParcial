import 'package:flutter/material.dart';
import 'package:parcial/presentation/widgets/app_drawer.dart';
import 'package:parcial/config/router/ruter_app.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome to my app"),
        titleTextStyle: const TextStyle(backgroundColor: Color(0xFF5D00FF)),
      ),
      drawer: const AppDrawer(),
      body: ListView.builder(
        itemCount: Routes.length,
        itemBuilder: (context, i) {
          final item = Routes[i];
          return ListTile(
            title: Text(item.title),
            subtitle: Text(item.description),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: item.builder),
              );
            },
          );
        },
      ),
    );
  }
}
