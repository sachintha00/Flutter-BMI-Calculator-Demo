import 'package:demo/helpers/BMICalculate/bmi_calculate.dart';
import 'package:demo/utilities/consts.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _height = 150;
  int _weight = 70;
  String _gender = '';

  late double bmi = calculateBMI(height: _height, weight: _weight);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          color: Colors.white,
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _gender = 'M';
                      });
                    },
                    child: Container(
                      height: 200,
                      width: 175,
                      decoration: BoxDecoration(
                          color: _gender == 'M'
                              ? Colors.orange.withAlpha(50)
                              : Colors.orange.withAlpha(150),
                          borderRadius: BorderRadius.circular(25)),
                      padding: const EdgeInsets.all(10.0),
                      child: const Column(
                        children: [
                          Icon(
                            Icons.male,
                            size: 150,
                          ),
                          Text("Male")
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _gender = 'F';
                      });
                    },
                    child: Container(
                      height: 200,
                      width: 175,
                      decoration: BoxDecoration(
                          color: _gender == 'F'
                              ? Colors.orange.withAlpha(50)
                              : Colors.orange.withAlpha(150),
                          borderRadius: BorderRadius.circular(25)),
                      padding: const EdgeInsets.all(10.0),
                      child: const Column(
                        children: [
                          Icon(
                            Icons.female,
                            size: 150,
                          ),
                          Text("Female")
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        const Text("Height"),
                        Text(
                          "$_height",
                          style: kInputLabelColor,
                        ),
                        Row(
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  if (_height > 50) _height--;
                                  bmi = calculateBMI(
                                      height: _height, weight: _weight);
                                });
                              },
                              child: const Icon(Icons.remove),
                            ),
                            const SizedBox(
                              width: 25,
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  if (_height < 250) _height++;
                                  bmi = calculateBMI(
                                      height: _height, weight: _weight);
                                });
                              },
                              child: const Icon(Icons.add),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        const Text("Weight"),
                        Text("$_weight", style: kInputLabelColor),
                        Row(
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  if (_weight > 35) _weight--;
                                  bmi = calculateBMI(
                                      height: _height, weight: _weight);
                                });
                              },
                              child: const Icon(Icons.remove),
                            ),
                            const SizedBox(
                              width: 25,
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  if (_weight < 300) _weight++;
                                  bmi = calculateBMI(
                                      height: _height, weight: _weight);
                                });
                              },
                              child: const Icon(Icons.add),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Column(
                children: [
                  const Text("BMI"),
                  Text(
                    bmi.toStringAsFixed(2),
                    style: kInputLabelColor.copyWith(
                        color: kOutputTextColor, fontSize: 60),
                  ),
                  Text(getResult(bmi))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
