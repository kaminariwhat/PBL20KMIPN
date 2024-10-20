import 'package:flutter/material.dart';


class RecommendationsScreen extends StatefulWidget {
const RecommendationsScreen({super.key});

  @override
  _RecommendationsScreenState createState() => _RecommendationsScreenState();
}

class _RecommendationsScreenState extends State<RecommendationsScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
             Navigator.of(context).pop();
          }, 
          icon: const Icon(Icons.keyboard_arrow_left),
          iconSize: 40,),
        title: const Text(
          'Area Urgensi',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),

      body: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Positioned(
                    child: SizedBox(
                    width: 200,
                    height: 200,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 250, 204, 204),
                        borderRadius: BorderRadius.circular(200)
                      ),
                    ),
                  )
                  )
                ],
              )
            ],
          ),
          Column()
        
        ],
      )

    );
  }
}