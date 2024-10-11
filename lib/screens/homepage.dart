import 'package:balap_in/screens/tutorial.dart';
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
      
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 200,
              width: 420,
              margin: const EdgeInsets.only(
                top: 20,
                bottom: 20,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black, 
                  width: 2.0,
                  ),
                image: const DecorationImage(
                image: AssetImage('assets/images/peta.png'),
                fit: BoxFit.cover,
              ), 
              ),
            ),

            const Padding(
            padding: EdgeInsets.only(
              top: 2,
              bottom: 14,
            ),
              child: SizedBox(
                width: 300,
                height: 70, 
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10)
                        )
                    ),
                    labelText: 'Cari Laporan',
                    prefixIcon: Icon(
                      Icons.search
                      ), 
                  ),
                ),
              ),
          ),

          
          SizedBox(
          width: 300,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => Tutorial())
                  );
                },
                child: Text('Cara melapor'),
                style: ElevatedButton.styleFrom(
                  shadowColor: Colors.black, 
                  elevation: 5, 
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Lapor Sekarang'),
                style: ElevatedButton.styleFrom(
                  shadowColor: Colors.black,
                  elevation: 5,
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Rekomendasi Urgensi'),
                style: ElevatedButton.styleFrom(
                  shadowColor: Colors.black,
                  elevation: 5,
                ),
              ),
            ],
          ),
        ),

            

            const SizedBox(height: 20), 
            Expanded(
              child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return const HomeWidget();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
