import 'package:flutter/material.dart';
import 'package:parcial/presentation/widgets/app_drawer.dart';
import 'package:parcial/config/router/ruter_app.dart';

class MyHome extends StatelessWidget {
  final bool isDarkMode;
  final ValueChanged<bool> onThemeChanged;

  const MyHome({
    super.key,
    required this.isDarkMode,
    required this.onThemeChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome to my app"),
        actions: [
          IconButton(
            tooltip: "Change theme",
            icon: Icon(
              isDarkMode ? Icons.light_mode : Icons.dark_mode,
            ),
            onPressed: () => onThemeChanged(!isDarkMode),
          ),
        ],
      ),
      drawer: AppDrawer(
        isDarkMode: isDarkMode,
        onThemeChanged: onThemeChanged,
      ),
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
