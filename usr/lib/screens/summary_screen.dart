import 'package:flutter/material.dart';
import '../widgets/snapy_mascot.dart';

class SummaryScreen extends StatelessWidget {
  final VoidCallback toggleTheme;
  final bool isDarkMode;

  const SummaryScreen({super.key, required this.toggleTheme, required this.isDarkMode});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Summary'),
        actions: [
          IconButton(
            icon: Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode),
            onPressed: toggleTheme,
          ),
          IconButton(
            icon: const Icon(Icons.share),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Share functionality coming soon!')),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.download),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Download functionality coming soon!')),
              );
            },
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
                Expanded(
                  child: Text(
                    'Here\'s your summary!',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.play_circle_fill, size: 30),
                        const SizedBox(width: 10),
                        Text('Summary Style: Bullet Notes', style: Theme.of(context).textTheme.titleMedium),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text('• Key point 1'),
                    const Text('• Key point 2'),
                    const Text('• Key point 3'),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('AI Conversation mode coming soon!')),
                        );
                      },
                      child: const Text('Ask Questions'),
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