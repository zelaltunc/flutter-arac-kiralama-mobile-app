import 'package:bitirmeprojesi/paket_tasima.dart';
import 'package:bitirmeprojesi/ulasim.dart';
import 'package:flutter/material.dart';

class Motor extends StatefulWidget {
  const Motor({super.key});

  @override
  State<Motor> createState() => _MotorState();
}

class _MotorState extends State<Motor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        leading: IconButton(
          icon: Icon(
            Icons.chevron_left,
            color: Colors.green,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/harita.jpeg"),
              fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: double.infinity,
              height: 50,
              color: Colors.green[600],
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  "Size Uygun Hizmeti Seçiniz",
                  style: TextStyle(color: Colors.white, fontSize: 17),
                )
              ]),
            ),
            Container(
              width: double.infinity,
              height: 180,
              color: Colors.grey[100],
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: (() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Ulasim()),
                        );
                      }),
                      child: Container(
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/images/ekonomik_motor.png",
                              width: 70,
                              height: 70,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text("Ulaşım",
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 17))
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: (() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PaketTasima()),
                        );
                      }),
                      child: Container(
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/images/paket_tasima.png",
                              width: 60,
                              height: 60,
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Text("Paket Taşıma",
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 17))
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
