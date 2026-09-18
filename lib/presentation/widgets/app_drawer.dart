import 'package:flutter/material.dart';
import 'cards/user_card.dart';
class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
    
      child: ListView(
        children: [
          const DrawerHeader(child: Text("our presonal information")),
          ListTile(
            title: const Text("Home"),
            subtitle: const Text("Main screen"),
            onTap: () {
              Navigator.pop(context); // Cierra el drawer
            },
          ),
          ListTile(
            title: const Text("Information Camilo"),
            subtitle: const Text("this is the personal information of camilo"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const UserCard(), ),);
            },
          )
        ],
      ),
      
    );
  }
}
