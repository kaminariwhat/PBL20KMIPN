import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Container(
          height: 140,
          width: 340,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 250, 204, 204),
            borderRadius: BorderRadius.circular(10), // Membuat sudut bulat
            boxShadow: const [
                BoxShadow(
                offset: Offset(5.0, 5.0),
                blurRadius: 5.0, // Mengatur radius bayangan
                color: Colors.black26, // Warna bayangan
              ),
            ],
          ),
        ),
      ),
    );
  }
}
