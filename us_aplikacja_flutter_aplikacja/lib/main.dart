import 'package:flutter/material.dart';

void main() => runApp(const FirstApp());

class FirstApp extends StatelessWidget {
  const FirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: NavigationExample());
  }
}

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.pinkAccent,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.arrow_back_ios_new_rounded),
            icon: Icon(Icons.arrow_back_ios_new_rounded),
            label: 'Gallery',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.favorite),
            icon: Icon(Icons.favorite_outline_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.star),
            icon: Icon(Icons.star_border_outlined),
            label: 'Gallery',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.settings_applications),
            icon: Icon(Icons.settings_applications_outlined),
            label: 'Settings',
          ),
        ],
      ),
      body: <Widget>[
        /// Home page
        Card(
          shadowColor: Colors.transparent,
          margin: const EdgeInsets.all(8.0),
          child: SizedBox.expand(
            child: Center(child: Text('back', style: theme.textTheme.titleLarge)),
          ),
        ),

        /// gallery page
               Card(
          shadowColor: Colors.transparent,
          margin: const EdgeInsets.all(8.0),
          child: SizedBox.expand(
            child: Center(child: Text('Gallery page', style: theme.textTheme.titleLarge)),
          ),
        ),

        /// Messages page
        Card(
          shadowColor: Colors.transparent,
          margin: const EdgeInsets.all(8.0),
          child: SizedBox.expand(
            child: Center(child: Text('settings page', style: theme.textTheme.titleLarge)),
          ),
        ),
        Card(
          shadowColor: Colors.transparent,
          margin: const EdgeInsets.all(8.0),
          child: SizedBox.expand(
            child: Center(child: Text('settings page', style: theme.textTheme.titleLarge)),
          ),
        ),
      ][currentPageIndex],
    );
  }
}