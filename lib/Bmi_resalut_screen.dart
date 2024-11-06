// ignore: file_names
// ignore: file_names
// ignore_for_file: use_key_in_widget_constructors, non_constant_identifier_names, duplicate_ignore, empty_constructor_bodies, file_names

import 'package:flutter/material.dart';

class BmiResulteScreen extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final int Resulte;
  final bool isMale;
  final int age;
  final double hight;
  final int wight;
  const BmiResulteScreen(
      {required this.Resulte, required this.age, required this.isMale,required this.hight,required this.wight});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI Resulte"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(20)),
                  width: screenSize.width,
                  height: screenSize.height * .5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Center(
                        child: Text(
                          "Details Of Person",
                          style:TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                          ),textAlign: TextAlign.left ,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Gender : ${isMale ? 'Male' : 'Female'}",
                          style: const TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "AGE: $age",
                          style: const TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ),
                       Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Hight: $hight",
                          style: const TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        )),
                         Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Weight: $wight",
                          style: const TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        )),
                    ],
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(20)),
                  width: screenSize.width,
                  height: screenSize.height * .25,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "*****RESULTE*******",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 20,),
                      Text(
                        "Resulte : $Resulte",
                        style: const TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),textAlign: TextAlign.left,
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
