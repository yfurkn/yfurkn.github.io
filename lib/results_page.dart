import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {

  final bool maleOrFemale;
  final int height;
  final int weight;
  final int age;

  const ResultsPage({super.key, required this.maleOrFemale, required this.height, required this.weight, required this.age});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFF111328),
      appBar: AppBar(
        backgroundColor: const Color(0xFF111328),
        title: const Text("BMI Results", style: TextStyle(color: Colors.white),),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.white),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: size.width,
              height: size.height*0.15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xFF1D1E33),
                border: Border.all(
                  color: Colors.white,
                  width: 3,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      const Text("  Gender:", style: TextStyle(color: Colors.white, fontSize: 28),),
                      Text(maleOrFemale ? "  Male" : "  Female",
                        style: const TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),),
                    ],
                  ),
                ],
              ),
            ),

            Container(
              width: size.width,
              height: size.height*0.15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xFF1D1E33),
                border: Border.all(
                  color: Colors.white,
                  width: 3,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      const Text("  Height:", style: TextStyle(color: Colors.white, fontSize: 28),),
                      Text("  $height",
                        style: const TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),),
                    ],
                  ),
                ],
              ),
            ),

            Container(
              width: size.width,
              height: size.height*0.15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xFF1D1E33),
                border: Border.all(
                  color: Colors.white,
                  width: 3,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      const Text("  Weight:", style: TextStyle(color: Colors.white, fontSize: 28),),
                      Text("  $weight",
                        style: const TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),),
                    ],
                  ),
                ],
              ),
            ),

            Container(
              width: size.width,
              height: size.height*0.15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xFF1D1E33),
                border: Border.all(
                  color: Colors.white,
                  width: 3,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      const Text("  Age:", style: TextStyle(color: Colors.white, fontSize: 28),),
                      Text("  $age",
                        style: const TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
