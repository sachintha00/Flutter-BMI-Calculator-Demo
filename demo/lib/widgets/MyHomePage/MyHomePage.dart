import 'package:demo/utilities/consts.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          color: Colors.white,
          child: Column(
            children: [
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Icon(
                          Icons.male,
                          size: 150,
                        ),
                        Text("Male")
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Icon(
                          Icons.female,
                          size: 150,
                        ),
                        Text("Female")
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Text("Height"),
                        Text(
                          "176",
                          style: kInputLabelColor,
                        ),
                        Row(
                          children: [
                            FloatingActionButton(
                              onPressed: null,
                              child: Icon(Icons.remove),
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            FloatingActionButton(
                              onPressed: null,
                              child: Icon(Icons.add),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Text("Weight"),
                        Text("176", style: kInputLabelColor),
                        Row(
                          children: [
                            FloatingActionButton(
                              onPressed: null,
                              child: Icon(Icons.remove),
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            FloatingActionButton(
                              onPressed: null,
                              child: Icon(Icons.add),
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
                    "22.00",
                    style: kInputLabelColor.copyWith(
                        color: kOutputTextColor, fontSize: 60),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
