import 'package:flutter/material.dart';

const List<String> jenis = <String>['Jalan', 'Lampu Jalan', 'Jembatan'];
const List<String> cuaca = <String>['Hujan Lebat', 'Hujan', 'Gerimis', 'Cerah'];

String? selectedItem = 'Jalan'; 
String? selectedCuaca = 'Hujan Lebat';
class LaporScreen extends StatefulWidget {
  const LaporScreen({super.key});

  @override
  _LaporScreenState createState() => _LaporScreenState();
}

class _LaporScreenState extends State<LaporScreen> {

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
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Column(
              children: [
                const SizedBox(height: 1),
                const SizedBox(
                  width: 340,
                  height: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Judul Pengaduan',
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
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
                      color: const Color.fromARGB(255, 230, 228, 228),
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
                          left: 9,
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
                      Text(
                        'Jenis Pengaduan',
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
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
                      color: const Color.fromARGB(255, 230, 228, 228),
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 4,
                          offset: const Offset(1, 5),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        const SizedBox(
                        width: 10,
                        ),
                        SizedBox(
                      width: 320,
                      height: 35,
                      child: DropdownButton<String>(
                        value: selectedItem,
                        items: jenis.map<DropdownMenuItem<String>>((String item) {
                          return DropdownMenuItem<String>(
                            value: item,
                            child: Text(item, style: const TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 10,
                            ),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? item) {
                          setState(() {
                            selectedItem = item;
                          }
                          );
                        },
                      ),
                      ),
                      ],
                    )
                  ),
                ),

                const SizedBox(height: 10),
                const SizedBox(
                  width: 340,
                  height: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Deskripsi Pengaduan',
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 100,
                  width: 350,
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 230, 228, 228),
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 4,
                          offset: const Offset(1, 5),
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.only(
                      top: 12,
                      right: 2),
                    child: const TextField(
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 12,
                      ),
                      cursorHeight: 14,
                      maxLines: 6,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Entah sudah selasa yang keberapa masih saja jalan itu rusak',
                        hintStyle: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 12,
                        ),
                        contentPadding: EdgeInsets.only(
                          top: -12,
                          left: 9,
                        ),
                      ),
                    ),
                  ),
                ),
                
                Center(
                  child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 80,
                      width: 350,
                      child: Center(
                        child: Row(
                          children: [
                            SizedBox(
                              height: 80,
                              width: 150,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    'Cuaca',
                                    style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                    ),
                                  ),
                                  const Padding(padding: EdgeInsets.only(top: 10)),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  SizedBox(
                                  width: 120,
                                  height: 35,
                                  child: DropdownButton<String>(
                                    value: selectedCuaca,
                                    items: cuaca.map<DropdownMenuItem<String>>((String cuaca) {
                                      return DropdownMenuItem<String>(
                                        value: cuaca,
                                        child: Text(cuaca, style: const TextStyle(
                                          fontFamily: "Poppins",
                                          fontSize: 10,
                                        ),
                                        ),
                                      );
                                    }).toList(),
                                    onChanged: (String? cuaca) {
                                      setState(() {
                                        selectedCuaca = cuaca;
                                      }
                                      );
                                    },
                                  ),
                                  ),
                                ],
                              ),
                              ),

                              SizedBox(
                              height: 80,
                              width: 50,
                              ),

                            SizedBox(
                              height: 80,
                              width: 150,
                              )
                          ],
                        ),
                      ),
                    ),
                  ],
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
