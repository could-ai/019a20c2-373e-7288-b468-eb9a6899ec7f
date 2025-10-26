import 'package:flutter/material.dart';
import '../widgets/snapy_mascot.dart';

class UploadScreen extends StatelessWidget {
  final VoidCallback toggleTheme;
  final bool isDarkMode;

  const UploadScreen({super.key, required this.toggleTheme, required this.isDarkMode});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Upload Media'),
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
              'Upload Your Media',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(height: 20),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    const Icon(Icons.video_library, size: 50),
                    const SizedBox(height: 10),
                    const Text('YouTube, TikTok, Instagram Reels'),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        // Placeholder for URL input
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('URL upload coming soon!')),
                        );
                      },
                      child: const Text('Enter URL'),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    const Icon(Icons.file_upload, size: 50),
                    const SizedBox(height: 10),
                    const Text('Upload Video/Audio Files'),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        // Placeholder for file upload
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('File upload coming soon!')),
                        );
                      },
                      child: const Text('Select File'),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/summary'),
              child: const Text('Generate Summary'),
            ),
          ],
        ),
      ),
    );
  }
}