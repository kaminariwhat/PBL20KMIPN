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
              height: 150,
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
              bottom: 10,
              top: 2,
            ),
              child: SizedBox(
                width: 340,
                height: 40, 
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10)
                        )
                    ),
                    labelText: 'Cari Laporan',
                    prefixIcon: Icon(
                      color: Colors.black,
                      Icons.search
                      ), 
                  ),
                ),
              ),
          ),

          
          Container(
          width: 280,
          height: 80,
          margin: const EdgeInsets.only(
            top: 5,
          ),
          child: SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center, 
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/tutorial');
                    },
                    child: SizedBox(
                      height: 80,
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            alignment: Alignment(0, -0.5),
                            image: AssetImage('assets/images/question.png'),
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              offset: Offset(1.0, 5.0),
                              blurRadius: 5.0,
                              color: Colors.black26,
                            ),
                          ],
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Cara Melapor',
                              style: TextStyle(
                                fontSize: 7,
                                fontFamily: "Poppins",
                              ),
                            ),
                            SizedBox(height: 7),
                          ],
                        ),
                      ),
                    ),
                  ),


                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '');
                  },
                  child: Container(
                  margin: const EdgeInsets.only(
                    left: 20
                    ),
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(1.0, 5.0),
                        blurRadius: 5.0, 
                        color: Colors.black26, 
                      ),
                    ],
                  ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: 58,
                          width: 80,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                            image: DecorationImage(
                            alignment: Alignment(0, -0.5),
                            image: AssetImage("assets/images/writing.png")
                              ),
                            ),
                          ),
                        ),
                        Text(
                          'Lapor sekarang',
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 7,
                          ),
                          )
                      ]
                    ),
                  ),
                ),

                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '');
                  },
                  child: Container(
                  margin: const EdgeInsets.only(
                    left: 20
                    ),
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(1.0, 5.0),
                        blurRadius: 5.0, 
                        color: Colors.black26, 
                      )
                    ]
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 60,
                        width: 80,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/chart.png")
                              )
                          )
                          ),
                      ),
                      Text(
                        'Rekomendasi Urgensi',
                          style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 6.2,
                        ),  
                      ),
                    ],
                  ),
                ),
                )
                ],
              ),
            ),
          ),
          

           const Padding(
              padding: EdgeInsets.only(
                top: 10,
                bottom: 2,
              ),
              child: SizedBox(
                height: 50,
                width: 250,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      SizedBox(
                        width: 120,
                        height: 40,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                            'Jumlah Laporan',
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                              fontSize: 7
                            ),
                            ),
                            Text(
                              '1609',
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.bold,
                                fontSize: 15
                              ),
                              )
                          ],
                        ),
                      ),

                      SizedBox(
                      width: 10,
                      height: 40,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: VerticalDivider(
                              color: Colors.black,
                              thickness: 1, 
                            ),
                          ),
                        ],
                      ),
                    ),


                      SizedBox(
                        width: 120,
                        height: 40,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                            'Keluhan Dominan',
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                              fontSize: 7
                            ),
                            ),
                            SizedBox(height: 3,),
                            Text(
                              'Jalan Berlubang',
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.bold,
                                fontSize: 10
                              ),
                              ),
                            SizedBox(height: 3,),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
        
            

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
