import 'package:flutter/material.dart';
import 'cards/user_card.dart';
import 'cards/isaac_card.dart';

class AppDrawer extends StatelessWidget {
  final bool isDarkMode;
  final ValueChanged<bool> onThemeChanged;

  const AppDrawer({
    super.key,
    required this.isDarkMode,
    required this.onThemeChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
    
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(
              color: Color(0xFF176B87),
            ),
            currentAccountPicture: const CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.person,
                size: 40,
                color: Color(0xFF176B87),
              ),
            ),
            accountName: const Text(''),
            accountEmail: const Text(''),
            onDetailsPressed: () {},
          ),
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
          ),
          ListTile(
            title: const Text("Information Isaac"),
            subtitle: const Text("this is the personal information of isaac"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const IsaacCard()));
            },
          )
        ],
      ),
      
    );
  }
}
