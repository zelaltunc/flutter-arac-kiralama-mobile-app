import 'package:bitirmeprojesi/car.dart';
import 'package:bitirmeprojesi/drawer_screen.dart';
import 'package:bitirmeprojesi/motor.dart';
import 'package:bitirmeprojesi/nakliye_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: DrawerScreen(),
        appBar: PreferredSize(
            child: Container(
              color: Colors.grey[100],
              padding:
                  EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Builder(
                    builder: (context) => GestureDetector(
                        onTap: () {
                          Scaffold.of(context).openDrawer();
                        },
                        child: Icon(
                          Icons.menu,
                          color: Colors.green,
                        )),
                  ),
                  Image.asset(
                    "assets/images/logo_green.png",
                  ),
                  Icon(Icons.notifications_rounded, color: Colors.green)
                ],
              ),
            ),
            preferredSize: Size.fromHeight(40)),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/harita2.jpeg"),
                fit: BoxFit.cover),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(32)),
                width: double.infinity,
                height: 150,
                child: Container(
                  height: 300,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: (() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Motor()),
                              );
                            }),
                            child: Container(
                              child: AdItem3(
                                image: 'assets/images/kurye.png',
                                text: "Motor",
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: (() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const car()),
                              );
                            }),
                            child: Container(
                              child: AdItem3(
                                image: 'assets/images/araba_yeşil.png',
                                text: "Araba",
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: (() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const NakliyePage()),
                              );
                            }),
                            child: Container(
                              child: AdItem3(
                                image: 'assets/images/nakliye_komyon.png',
                                text: "Nakliye",
                              ),
                            ),
                          ),

                          GestureDetector(
                            onTap: (() {}),
                            child: Container(
                              child: AdItem3(
                                image: 'assets/images/taksi_green.png',
                                text: "Taksi",
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: (() {}),
                            child: Container(
                              child: AdItem3(
                                image: 'assets/images/ucak_green.png',
                                text: "Uçak",
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: (() {}),
                            child: Container(
                              child: AdItem3(
                                image: 'assets/images/gemi_green.png',
                                text: "Gemi",
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

  const AdItem3({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(children: [
        Container(
            height: 90,
            width: 90,
            child: Image.asset(
              image,
              width: 90,
              height: 70,
            )),
        Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 35),
            child: Container(
              width: 70,
              child: Text(
                text,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            )),
      ]),
    );
  }
}
