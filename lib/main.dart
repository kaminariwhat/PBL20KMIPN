import 'package:flutter/material.dart';
import 'screens/homepage.dart';// Import file HomeScreen

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hallo, Selamat Datang di BALAP-IN',
      home: HomeScreen(),  // Gunakan HomeScreen di sini
    );
  }
}
