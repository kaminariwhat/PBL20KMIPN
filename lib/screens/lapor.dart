import 'package:flutter/material.dart';


class LaporScreen extends StatelessWidget {
  const LaporScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const SizedBox(
          child: Row(
            children: [
               Text.rich(
               TextSpan(
                text: 'Buat Laporan',
                style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 18,
                fontWeight: FontWeight.bold,
              )
            )
            ),
            ],
          ),
        )
      ),

      body: Column(
        children: [
          Center(
            child: Column(
              children: [
                const SizedBox(height: 20),
                SizedBox(
                height: 35,
                width: 350,
                child: Container(
                  decoration: BoxDecoration(
                    color:const Color.fromARGB(255, 230, 228, 228), 
                    borderRadius: BorderRadius.circular(5), 
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2), 
                        blurRadius: 4, 
                        offset: const Offset(0, 2), 
                      ),
                    ],
                  ),
                  child: const TextField(
                    cursorHeight: 2,
                    decoration: InputDecoration(
                      border: InputBorder.none, 
                      labelText: 'Judul Pengaduan. Cth: Jalan berlubang di jalan raya piayu',
                      labelStyle: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 9,
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 10), 
                    ),
                  ),
                ),
              )

              ],
            ),
          )
        ],
      ),

    );
  }
}