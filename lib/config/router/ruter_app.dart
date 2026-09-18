// routes.dart
import 'package:flutter/material.dart';
import 'package:parcial/presentation/widgets/cards/user_card.dart';
import 'package:parcial/config/router/router_model.dart';
import 'package:parcial/presentation/screens/home_screen.dart';

void _doNothing(bool value) {}

class UserCardScreen extends StatelessWidget {
  const UserCardScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text("My personal information")),
    body: const UserCard(),
  );
}

final Routes = [
  RouterModel(
    title: 'Home',
    description: 'Home',
    name: 'Home',
    builder: (_) => const UserCard(), // create HomeScreen
  ),
  RouterModel(
    title: 'text',
    description: 'vistas con textos',
    name: 'texto',
    builder: (_) => MyHome(
      isDarkMode: false,
      onThemeChanged: _doNothing,
    ), // create TextScreen
  ),
  RouterModel(
    title: 'Hola card',
    description: 'cardddd',
    name: 'card',
    builder: (_) => MyHome(
      isDarkMode: false,
      onThemeChanged: _doNothing,
    ),
  ),
];
