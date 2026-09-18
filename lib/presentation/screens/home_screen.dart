import 'package:flutter/material.dart';
import 'package:parcial/presentation/widgets/app_drawer.dart';

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
        title: const Text("Welcome"),
        actions: [
          IconButton(
            tooltip: "Change theme",
            icon: Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode),
            onPressed: () => onThemeChanged(!isDarkMode),
          ),
        ],
      ),
      drawer: AppDrawer(isDarkMode: isDarkMode, onThemeChanged: onThemeChanged),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Center(
                  child: Text(
                    "Este es el primer parcial de dispositivos moviles",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
                 Text("app hacha por adrian y isaac "),
              
            ],
          ),
        ],
      ),
    );
  }
}
