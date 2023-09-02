import 'package:flutter/material.dart';
import 'package:{{name.snakeCase()}}/core/theme/theme_manager.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: const Padding(
        padding: EdgeInsets.all(ThemeManager.padding),
        child: TextField(
          decoration: InputDecoration(hintText: 'Some hint text'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.abc),
      ),
    );
  }
}
