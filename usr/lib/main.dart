import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/upload_screen.dart';
import 'screens/summary_screen.dart';
import 'screens/dashboard_screen.dart';
import 'theme/app_theme.dart';
import 'widgets/snapy_mascot.dart';

void main() {
  runApp(const SnapSummaryApp());
}

class SnapSummaryApp extends StatefulWidget {
  const SnapSummaryApp({super.key});

  @override
  State<SnapSummaryApp> createState() => _SnapSummaryAppState();
}

class _SnapSummaryAppState extends State<SnapSummaryApp> {
  bool _isDarkMode = false;

  void _toggleTheme() {
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snap Summary',
      debugShowCheckedModeBanner: false,
      theme: _isDarkMode ? AppTheme.darkTheme : AppTheme.lightTheme,
      home: HomeScreen(
        toggleTheme: _toggleTheme,
        isDarkMode: _isDarkMode,
      ),
      routes: {
        '/upload': (context) => UploadScreen(
          toggleTheme: _toggleTheme,
          isDarkMode: _isDarkMode,
        ),
        '/summary': (context) => SummaryScreen(
          toggleTheme: _toggleTheme,
          isDarkMode: _isDarkMode,
        ),
        '/dashboard': (context) => DashboardScreen(
          toggleTheme: _toggleTheme,
          isDarkMode: _isDarkMode,
        ),
      },
    );
  }
}