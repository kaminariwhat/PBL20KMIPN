import 'package:flutter/material.dart';

class Tutorial extends StatelessWidget {
  const Tutorial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text.rich(
          TextSpan(
            text: 'Cara Melapor',
            style: TextStyle(
              fontSize: 18.0,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(2.0, 2.0),
                  blurRadius: 1.0,
                  color: Color.fromARGB(66, 225, 219, 219),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/tutorial.png',
              width: 400, // Sesuaikan ukuran gambar
              height: 200,
            ),
            const Text("This is the body"),
            const SizedBox(height: 20), // Spacer antara teks dan gambar
          ],
        ),
      ),
    );
  }
}
