import 'package:flutter/material.dart';

class IsiRekomendasiScreen extends StatefulWidget {
  const IsiRekomendasiScreen({super.key});

  @override
  _IsiRekomendasiScreenState createState() => _IsiRekomendasiScreenState();
}

class _IsiRekomendasiScreenState extends State<IsiRekomendasiScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
             Navigator.of(context).pop();
          }, 
          icon: const Icon(Icons.keyboard_arrow_left),
          iconSize: 40,),
          title: const SizedBox(
            width: 320,
            child: FittedBox(
              child: Text(
            'Jalan Berlubang Parah Sudah 5 Bulan',
            style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
            ),
            )
          )
      ),

      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(
                top: 30
                ),
              child: SizedBox(
                width: 380,
                height: 20,
                child: Text('Kategori: Jalan Rusak',
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 9
                  ),
                  ),
                ),
              ),

              const Padding(
                padding: EdgeInsets.only(
                bottom: 20
                ),
              child: SizedBox(
                width: 380,
                height: 20,
                child: Text('Jl. Sudirman No.3, Sukajadi, Kec. Batam Kota, Kota Batam, Kepulauan Riau 29432',
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 9
                  ),
                  ),
                ),
              ),

              const Padding(
                padding: EdgeInsets.only(
                ),
              child: SizedBox(
                width: 380,
                height: 17,
                child: Text('Dokumentasi Laporan',
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 9
                  ),
                  ),
                ),
              ),
              
              const SizedBox(
                height: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.black,
                        thickness: 1.5,
                      )
                    )
                  ],
                ),
              ),

              

            ],
          ),
        ),
      ),

    );
  }
}