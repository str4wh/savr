import 'package:flutter/material.dart';

//app entry point
void main() {
  runApp(const SavrApp());
}

//main app widget
class SavrApp extends StatelessWidget {
  const SavrApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Savr',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar with transparent background and outlined white text
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Transparent AppBar
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Welcome to Savr!',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 2.5
              ..color = Colors.white,
          ),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFFA8E063),
                Color(0xFF56AB2F),
              ],
            ),
          ),
        ),
      ),
      // Gradient background for the body
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFA8E063),
              Color(0xFF56AB2F),
            ],
          ),
        ),
        child: Center(
          child: Text(
            'Your content here!',
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
        ),
      ),
    );
  }
}