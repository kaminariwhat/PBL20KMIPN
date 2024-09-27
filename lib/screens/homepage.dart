import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text.rich(
          TextSpan(
            text: 'Hallo, Selamat Datang di ', 
            style: TextStyle(
              fontSize: 18.0,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(2.0, 2.0),
                  blurRadius: 1.0,
                  color: Colors.black26,
                ),
              ],
            ),
            children: <TextSpan>[
              TextSpan(
                text: 'BALAP-IN', 
                style: TextStyle(
                  color: Colors.red, 
                ),
              ),
            ],
          ),
        ),
      ),
      body: const Center(
        child: Text("This is the body"),
      ),
    );
  }
}
