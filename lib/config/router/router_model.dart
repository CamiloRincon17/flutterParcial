import 'package:flutter/material.dart';
class RouterModel {
  final String title;
  final String description;
  final String name;
  final Widget Function(BuildContext) builder; // ← use builder

const RouterModel(
  {
    required this.description,
    required this.name,
    required this.title,
    required this.builder
  }
);

}
