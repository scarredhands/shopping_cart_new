import 'package:flutter/material.dart';
import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //logo
          Padding(
              padding: const EdgeInsets.all(50),
            child: Image.asset('lib/images/yatikamart.jpeg'),

          ),
          //welcome to yatikamart
          Padding(
              padding: EdgeInsets.all(24),
              child:
              Text('Welcome to Yatika Mart',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),


              )
          ),

          //fresh items everyday just one click away
          Text('fresh items just one click away!',
          style: TextStyle(
          fontSize: 20,
          ),
    ),

          //start
          const SizedBox(height: 40),
          GestureDetector(
            onTap: () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context){return HomePage();
            }
            ),
            ),
          child:
          Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.deepPurpleAccent,
              borderRadius: BorderRadius.circular(15)
            ),

          child: const Text(
            "Get Started",
            style: TextStyle(
              color: Colors.white,
              // fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
    )
          )
        ],

      ),
    );
  }
}
