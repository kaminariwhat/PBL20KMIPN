import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Halo, Selamat Datang di BALAP-IN';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            appTitle,
            style: TextStyle(
              fontSize: 18.0, // Menetapkan ukuran teks di sini
            ),
          ),
        ),
      ),
    );
  }
}