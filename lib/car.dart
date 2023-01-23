import 'package:flutter/material.dart';

class car extends StatefulWidget {
  const car({super.key});

  @override
  State<car> createState() => _carState();
}

class _carState extends State<car> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                color: Colors.grey[100],
                //   decoration: BoxDecoration(
                //  color: Colors.black, borderRadius: BorderRadius.circular(32)),
                width: double.infinity,
                height: 175,
                child: Container(
                  height: 300,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: (() {
                              // Navigator.push(
                              // context,
                              //MaterialPageRoute(
                              //    builder: (context) => const Motor()),
                              //);
                            }),
                            child: Container(
                              child: AdItem3(
                                image: 'assets/images/hyundai.png',
                                text: "Hyundai i20",
                                icon: Icons.location_history,
                                textt: "3 dakika yürüme mesafesinde",
                                text3: "5,99 TL/dk",
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: (() {}),
                            child: Container(
                              child: AdItem3(
                                image: 'assets/images/passat.png',
                                text: " Passat",
                                icon: Icons.location_history,
                                textt: "15 dakika yürüme mesafesinde",
                                text3: "8,35 TL/dk",
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: (() {}),
                            child: Container(
                              child: AdItem3(
                                image: 'assets/images/transporter.png',
                                text: "Transporter",
                                icon: Icons.location_history,
                                textt: "30 dakika yürüme mesafesinde ",
                                text3: "15,20 TL/dk",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AdItem3 extends StatelessWidget {
  final String image;
  final String text;
  final IconData icon;
  final String textt;
  final String text3;

  const AdItem3({
    Key? key,
    required this.image,
    required this.text,
    required this.icon,
    required this.textt,
    required this.text3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(children: [
        Container(
            height: 150,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                width: 1,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(children: [
              Row(
                children: [
                  Image.asset(image, width: 100, height: 100),
                  SizedBox(
                    width: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        text,
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 80,
                    height: 23,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      text3,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Icon(
                        icon,
                        color: Colors.black,
                      )
                    ],
                  ),
                  Text(
                    textt,
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ),
            ])),
      ]),
    );
  }
}
