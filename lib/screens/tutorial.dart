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
                  color: Color.fromRGBO(225, 219, 219, 0.259),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Expanded(child: 
      SingleChildScrollView(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center, // Rata tengah untuk teks
        children: [
          // Gambar berada di paling atas, di bawah AppBar
          Image.asset(
            'assets/images/tutorial.png',
            width: double.infinity, // Gambar mengisi lebar layar
            fit: BoxFit.contain, // Memastikan gambar sesuai dengan ukuran aslinya
          ),
          const SizedBox(height: 20), // Spacer antara gambar dan teks
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0), // Menambahkan padding untuk teks
            child: Text(
              'Batam Lapor Infrastruktur\n',
              textAlign: TextAlign.center, // Rata tengah untuk teks
              style: TextStyle(
                fontSize: 16.0, // Ukuran font yang lebih besar untuk teks ini
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold, // Menjadikan teks bold
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 10), // Spacer antara teks "BALAP-IN siap" dan konten di bawahnya
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0), // Menambahkan padding untuk teks
            child: Text(
              'Anda bisa melaporkan jika:\n'
              '• Anda merupakan warga Kota Batam.\n'
              '• Melihat kerusakan infrastruktur seperti jalan, lampu penerangan, dan jembatan.\n\n'
              'Langkah-langkah melaporkan:\n'
              '1. Buka aplikasi BALAP-IN.\n'
              '2. Klik fitur “Lapor Sekarang!” pada halaman dashboard atau halaman ini.\n'
              '3. Lengkapi formulir mulai dari judul pengaduan, jenis pengaduan, deskripsi, gambar dan lokasi.',
              textAlign: TextAlign.left, // Rata kiri untuk teks
              style: TextStyle(
                fontSize: 12.0, // Ukuran font yang sesuai
                fontFamily: 'Poppins',
                color: Colors.black,
              ),
            ),
          ),
        ],
        ),
        )
      )
    );
  }
}