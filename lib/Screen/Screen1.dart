import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shopping/Model/colors.dart';
import 'package:shopping/Screen/Home.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.of(
        context,
      ).pushReplacement(MaterialPageRoute(builder: (_) => Home()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: AppColors.primaryColor,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Shopping",
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontFamily: "Suwannaphum",
                ),
              ),
              Container(
                child: Lottie.network(
                  "https://lottie.host/e404036e-03a8-4755-b1a7-b005c9f23be5/aagacDrSi5.json",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
