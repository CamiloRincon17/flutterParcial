import 'package:flutter/material.dart';

class IsaacCard extends StatelessWidget {
  const IsaacCard({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: const Text("Mi profile")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: const BorderRadius.all(Radius.circular(32)),
              ),
              elevation: 0,
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 42,
                      backgroundColor: theme.colorScheme.primary,
                      child: Icon(
                        Icons.person,
                        color: theme.colorScheme.onPrimary,
                        size: 42,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Isaac David Garcia Vesga",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "System Engineer",
                            style: theme.textTheme.bodyMedium,
                          ),
                          Row(
                            children: [
                              Icon(Icons.email, size: 18),
                              SizedBox(width: 6),
                              Expanded(child: Text("idgarciav@ufpso.com")),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.phone, size: 18),
                              SizedBox(width: 6),
                              Text("315 489 1194"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Card(
                    elevation: 0,
                    child: const ListTile(
                      contentPadding: EdgeInsets.all(8),
                      leading: Icon(Icons.music_note),
                      title: Text("My Hobbies"),
                      subtitle: Text("Listening to music"),
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    elevation: 0,
                    child: const ListTile(
                      contentPadding: EdgeInsets.all(8),
                      leading: Icon(Icons.gamepad),
                      title: Text("My tastes"),
                      subtitle: Text("Playing video games"),
                    ),
                  ),
                ),
              ],
            ),
            Card(
              elevation: 0,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "My Activities",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Divider(),
                    Row(
                      children: [
                        Icon(Icons.work),
                        SizedBox(width: 10),
                        Text("Working"),
                      ],
                    ),
                    Divider(),
                    Row(
                      children: [
                        Icon(Icons.gamepad),
                        SizedBox(width: 10),
                        Text("Playing"),
                      ],
                    ),
                    Divider(),
                    Row(
                      children: [
                        Icon(Icons.restaurant),
                        SizedBox(width: 10),
                        Text("Eating"),
                      ],
                    ),
                    Divider(),
                    Row(
                      children: [
                        Icon(Icons.sports_soccer),
                        SizedBox(width: 10),
                        Text("Playing Sports"),
                      ],
                    ),
                    Divider(),
                    Row(
                      children: [
                        Icon(Icons.menu_book),
                        SizedBox(width: 10),
                        Text("Studying"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}