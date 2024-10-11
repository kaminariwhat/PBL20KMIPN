import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Container(
          height: 115,
          width: 340,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 250, 204, 204),
            borderRadius: BorderRadius.circular(10), // Membuat sudut bulat
            boxShadow: [
                const BoxShadow(
                offset: const Offset(5.0, 5.0),
                blurRadius: 5.0, // Mengatur radius bayangan
                color: Colors.black26, // Warna bayangan
              ),
            ],
          ),
          child: Row(
            children: <Widget>[
              const Column(
                children: [
                  Text('Jalan berlobang parah sudah 5 bulan',
                  style: TextStyle(
                      fontSize: 8,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('asjaj')
                ],
              ),
              SizedBox(
                child: Container(
                  margin: const EdgeInsets.only(
                    left: 6,
                    right: 5
                  ),
                  height: 100,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/jalan.png'),
                      fit: BoxFit.cover,
                      )
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
