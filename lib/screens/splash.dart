import 'package:flutter/material.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      body: const Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 SizedBox(
                  // Tambahkan const
                  height: 200,
                  width: 200,
                  child: Image(
                    image: AssetImage('assets/images/wwww.png'),
                  ),
                ),
                SizedBox(height: 5), // Tambahkan const
                Text(
                  // Tambahkan const
                  'Batam Lapor Infrastruktur',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: SizedBox(
              height: 250,
              child: Image(
                // Tambahkan const
                image: AssetImage('assets/images/elemen.jpeg'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}