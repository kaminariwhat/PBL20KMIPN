import 'package:flutter/material.dart';
import 'package:balap_in/widgets/homewidget.dart';

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
              color: Color.fromRGBO(5, 5, 5, 0.612),
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

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Gambar peta
          Container(
            width: double.infinity,
            height: 200,
            child: Image.asset(
              'assets/images/peta.png',
              fit: BoxFit.cover,
            ),
          ),

          // Search Box dengan ukuran khusus
          Padding(
            padding: const EdgeInsets.all(13),
            child: Container(
              height: 40, // Atur tinggi search box
              width: double.infinity, // Atur lebar agar memenuhi layar
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Cari Laporan ...',
                  suffixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
          ),

          const SizedBox(height: 20), // Spacer antara search box dan tombol

          // Grid dengan 4 tombol petak
          Padding(
            padding: const EdgeInsets.all(1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Tombol 1
                _buildSquareButton(context, 'Tutorial 1', '/tutorial'),
                // Tombol 2
                _buildSquareButton(context, 'Tutorial 2', '/tutorial2'),
                // Tombol 3
                _buildSquareButton(context, 'Tutorial 3', '/tutorial3'),
                // Tombol 4
                _buildSquareButton(context, 'Tutorial 4', '/tutorial4'),
              ],
              
            ),
          ),

          const SizedBox(height: 20), // Spacer sebelum list view

          // ListView untuk menampilkan item dengan HomeWidget
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return const HomeWidget(); // Pastikan HomeWidget diimport dengan benar
              },
            ),
          ),
        ],
      ),
    );
  }

  // Fungsi untuk membuat tombol petak
  Widget _buildSquareButton(BuildContext context, String text, String route) {
    return Container(
      width: 80, // Atur lebar petak
      height: 80, // Atur tinggi petak
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, route);
        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20), // Bentuk petak
          ),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 12),
        ),
      ),
    );
  }
}
