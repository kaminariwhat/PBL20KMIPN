import 'package:flutter/material.dart';
import 'screens/homepage.dart'; // Import file HomeScreen
import 'screens/tutorial.dart'; // Import file Tutorial

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hallo, Selamat Datang di BALAP-IN',
      home: const HomeScreen(),  // Gunakan HomeScreen di sini
      routes: {
        '/tutorial': (context) => const Tutorial(),
      },
    );
  }
}
