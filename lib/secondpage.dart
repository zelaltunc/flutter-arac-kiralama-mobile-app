import 'package:bitirmeprojesi/customer_login.dart';
import 'package:bitirmeprojesi/driver_login.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Center(
                child: GestureDetector(
              onTap: (() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DriverLogin()));
              }),
              child: Container(
                alignment: Alignment.topCenter,
                width: 450,
                height: 280,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/direksiyon.png', height: 150),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "SÜRÜCÜ-TAŞIYICI",
                        style: TextStyle(fontSize: 25),
                      ),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  border: Border.all(width: 5, color: Colors.black),
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  color: Colors.white,
                ),
              ),
            )),
          ),
          Center(
              child: GestureDetector(
            onTap: (() {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CustomerLogin()));
            }),
            child: Container(
              alignment: Alignment.topCenter,
              width: 450,
              height: 280,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/musteri2.png', height: 160),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "MÜŞTERİ",
                      style: TextStyle(fontSize: 25),
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                border: Border.all(width: 5, color: Colors.black),
                borderRadius: const BorderRadius.all(Radius.circular(15)),
                color: Colors.white,
              ),
            ),
          )),
        ],
      ),
    );
  }
}
