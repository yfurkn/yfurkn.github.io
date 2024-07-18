import 'package:ders123/results_page.dart';
import 'package:flutter/material.dart';

class BMICalculator extends StatefulWidget {
  const BMICalculator({super.key});

  @override
  State<BMICalculator> createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {

  int selectedHeight = 170;
  int selectedWeight = 60;
  int age = 18;
  bool maleOrFemale = true;


  late FixedExtentScrollController _heightScrollController;
  late FixedExtentScrollController _weightScrollController;

  @override
  void initState() {
    super.initState();
    _heightScrollController = FixedExtentScrollController(initialItem: selectedHeight - 100);
    _weightScrollController = FixedExtentScrollController(initialItem: selectedWeight - 20);
  }

  @override
  void dispose() {
    _heightScrollController.dispose();
    _weightScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF111328),
        appBar: AppBar(
          backgroundColor: const Color(0xFF111328),
          title: const Text(
            "BMI Calculator",
            style: TextStyle(color: Colors.white),
          ),
        ),

        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ////////////////////////////  MALE & FEMALE  ////////////////////////////////
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    ////////////////////////////  MALE  ///////////////////////////////////
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          maleOrFemale = true;
                        });
                      },
                      child: Container(
                        height: size.height*0.25,
                        width: size.width*0.42,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xFF1D1E33),
                          border: Border.all(
                              color: maleOrFemale ? Colors.white : Colors.transparent,
                              width: maleOrFemale ? 3 : 0,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.male, color: Colors.orange, size: 100,),
                            Text(
                              "Male",
                              style: TextStyle(color: Colors.grey.shade100, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),

                    //////////////////////////// FEMALE  //////////////////////////////////
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          maleOrFemale = false;
                        });
                      },
                      child: Container(
                        height: size.height*0.25,
                        width: size.width*0.42,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xFF1D1E33),
                          border: Border.all(
                            color: maleOrFemale ? Colors.transparent : Colors.white,
                            width: maleOrFemale ? 0 : 3,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.female, color: Colors.pink.shade300, size: 100,),
                            Text(
                              "Female",
                              style: TextStyle(color: Colors.grey.shade100, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]
              ),



              /////////////////////////////////  HEIGHT  /////////////////////////////
              Container(
                height: size.height*0.25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFF1D1E33),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Height (in cm)",
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      height: size.height*0.1,
                      child: RotatedBox(
                        quarterTurns: 3,
                        child: ListWheelScrollView.useDelegate(
                          controller: _heightScrollController,
                          itemExtent: 80,
                          onSelectedItemChanged: (index) {
                            setState(() {
                              selectedHeight = index + 100;
                            });
                          },
                          childDelegate: ListWheelChildBuilderDelegate(
                            builder: (context, index){
                              return RotatedBox(
                                quarterTurns: 1,
                                child: Center(
                                  child: Text(
                                      (index + 100).toString(),
                                    style: TextStyle(
                                      fontSize: index + 100 == selectedHeight
                                          ? 32
                                          : 24,
                                      color: index + 100 == selectedHeight
                                        ? Colors.white
                                        : Colors.grey,
                                      fontWeight: index + 100 == selectedHeight
                                        ? FontWeight.bold
                                        : FontWeight.normal,
                                    ),
                                  ),
                                ),
                              );
                            }
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),



              /////////////////////////////////  WEIGHT  & AGE  /////////////////////////////
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  ///////////////////////////////  WEIGHT  ////////////////////////////////
                  Container(
                    height: size.height*0.25,
                    width: size.width*0.42,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xFF1D1E33),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Weight",
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          height: size.height*0.1,
                          child: RotatedBox(
                            quarterTurns: 3,
                            child: ListWheelScrollView.useDelegate(
                              controller: _weightScrollController,
                              itemExtent: 50,
                              onSelectedItemChanged: (index) {
                                setState(() {
                                  selectedWeight = index + 20;
                                });
                              },
                              childDelegate: ListWheelChildBuilderDelegate(
                                  builder: (context, index){
                                    return RotatedBox(
                                      quarterTurns: 1,
                                      child: Center(
                                        child: Text(
                                          (index + 20).toString(),
                                          style: TextStyle(
                                            fontSize: index + 20 == selectedWeight
                                                ? 32
                                                : 24,
                                            color: index + 20 == selectedWeight
                                                ? Colors.white
                                                : Colors.grey,
                                            fontWeight: index + 20 == selectedWeight
                                                ? FontWeight.bold
                                                : FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),


                  /////////////////////////////////////  AGE  /////////////////////////////////////
                  Container(
                    height: size.height*0.25,
                    width: size.width*0.42,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xFF1D1E33),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Age",
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),

                        const SizedBox(height: 24,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: (){
                                setState(() {
                                  age = age - 1;
                                });
                              },
                              child: Container(
                                height: size.width*0.09,
                                width: size.width*0.09,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.transparent,
                                  border: Border.all(color: Colors.white54, width: 3)
                                ),
                                child: const Icon(Icons.remove, color: Colors.white54,),
                              ),
                            ),

                            Text(age.toString(), style: const TextStyle(fontSize: 36, color: Colors.white, fontWeight: FontWeight.bold),),

                            GestureDetector(
                              onTap: (){
                                setState(() {
                                  age = age + 1;
                                });
                              },
                              child: Container(
                                height: size.width*0.09,
                                width: size.width*0.09,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.transparent,
                                    border: Border.all(color: Colors.white54, width: 3)
                                ),
                                child: const Icon(Icons.add, color: Colors.white54,),
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 24,),
                      ],
                    ),
                  ),
                ],
              ),

              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ResultsPage(
                    maleOrFemale: maleOrFemale,
                    height: selectedHeight,
                    weight: selectedWeight,
                    age: age,
                  ))
                  );
                },
                child: Container(
                  height: size.width*0.15,
                  width: size.width*0.15,
                  decoration: BoxDecoration(
                      color: Colors.white,
                    borderRadius: BorderRadius.circular(100)
                  ),
                  child: const Center(
                      child: Text(
                        "BMI",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
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
