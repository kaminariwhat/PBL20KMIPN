import 'package:flutter/material.dart';

const List<String> list = <String>['Jalan', 'Lampu Jalan', 'Jembatan'];
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
                const SizedBox(
                  width: 340,
                  height: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Judul Pengaduan',
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        fontSize: 10
                      ),
                      )
                    ],
                  ),
                ),
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
                        offset: const Offset(1, 5), 
                      ),
                    ],
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none, 
                      hintText: 'Jalan berlubang di jalan raya piayu',
                      hintStyle: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 10,
                      ),
                      contentPadding: EdgeInsets.only(
                        top: -12,
                        left: 9
                        ), 
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const SizedBox(
                width: 340,
                  height: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Jenis Pengaduan',
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                        fontSize: 10
                      ),
                      )
                    ],
                  ),
              ),
              SizedBox(
                width: 350,
                height: 35,
                child: Container(
                  decoration: BoxDecoration(
                    color:const Color.fromARGB(255, 230, 228, 228), 
                    borderRadius: BorderRadius.circular(5), 
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2), 
                        blurRadius: 4, 
                        offset: const Offset(1, 5), 
                      ),
                    ],
                  ),
                  child: SizedBox(
                    width: 350,
                    height: 35,
                    child: DropdownMenu<String>(
                    hintText: 'Jenis Pengaduan',
                    textStyle: const TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 10
                    ),
                    dropdownMenuEntries: list.map<DropdownMenuEntry<String>>((String value) {
                      return DropdownMenuEntry<String>(value: value, label: value);
                    }).toList(),
                    ),
                  ),
                ),
              ),
              ],
            ),
          )
        ],
      ),

    );
  }
}