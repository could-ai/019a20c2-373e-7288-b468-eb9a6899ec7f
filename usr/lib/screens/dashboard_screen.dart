import 'package:flutter/material.dart';
import '../widgets/snapy_mascot.dart';

class DashboardScreen extends StatelessWidget {
  final VoidCallback toggleTheme;
  final bool isDarkMode;

  const DashboardScreen({super.key, required this.toggleTheme, required this.isDarkMode});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trends Dashboard'),
        actions: [
          IconButton(
            icon: Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode),
            onPressed: toggleTheme,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const SnapyMascot(size: 50),
                const SizedBox(width: 10),
                Text(
                  'Trending Topics',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const ListTile(
                      leading: Icon(Icons.trending_up),
                      title: Text('AI Technology'),
                      subtitle: Text('Most summarized this week'),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const ListTile(
                      leading: Icon(Icons.trending_up),
                      title: Text('Marketing Strategies'),
                      subtitle: Text('Rising in popularity'),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const ListTile(
                      leading: Icon(Icons.trending_up),
                      title: Text('Podcast Insights'),
                      subtitle: Text('Top shared summaries'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}