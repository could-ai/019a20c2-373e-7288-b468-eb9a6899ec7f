import 'package:flutter/material.dart';
import '../widgets/snapy_mascot.dart';

class HomeScreen extends StatelessWidget {
  final VoidCallback toggleTheme;
  final bool isDarkMode;

  const HomeScreen({super.key, required this.toggleTheme, required this.isDarkMode});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snap Summary'),
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SnapyMascot(),
            const SizedBox(height: 20),
            Text(
              'AI-Powered Video & Audio Summarizer',
              style: Theme.of(context).textTheme.headlineLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Text(
              'Get smart, instant summaries of YouTube, TikTok, podcasts, and uploaded media',
              style: Theme.of(context).textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            ElevatedButton.icon(
              onPressed: () => Navigator.pushNamed(context, '/upload'),
              icon: const Icon(Icons.upload_file),
              label: const Text('Upload Media'),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () => Navigator.pushNamed(context, '/dashboard'),
              icon: const Icon(Icons.dashboard),
              label: const Text('Trends Dashboard'),
            ),
          ],
        ),
      ),
    );
  }
}