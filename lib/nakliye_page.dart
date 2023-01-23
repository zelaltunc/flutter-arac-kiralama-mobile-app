import 'package:flutter/material.dart';

class NakliyePage extends StatefulWidget {
  const NakliyePage({super.key});

  @override
  State<NakliyePage> createState() => _NakliyePageState();
}

class _NakliyePageState extends State<NakliyePage> {
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
              image: AssetImage("assets/images/nakliye_harita2.jpeg"),
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
              height: 270,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.edit_location,
                          color: Colors.green,
                          size: 20,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Köşe Büfe | Mimar sinan caddesi',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 57),
                        child: Row(
                          children: [
                            Text(
                              'İstanbul',
                              style: TextStyle(
                                  fontSize: 15, color: Colors.black54),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.edit_location,
                              color: Colors.green,
                              size: 20,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Sultan II. Mahmud Türbesi',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 57),
                        child: Row(
                          children: [
                            Text(
                              '4dk,3 km',
                              style: TextStyle(
                                  fontSize: 15, color: Colors.black54),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                              margin: EdgeInsets.only(
                                left: 10,
                                right: 10,
                              ),
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  border: Border.all(
                                    color: Colors.black45,
                                  )),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Icon(
                                        Icons.info_outline,
                                        color: Colors.green,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "assets/images/kango.png",
                                        width: 80,
                                        height: 50,
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text('MİNİ',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold))
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text('250 TRY',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold))
                                      ],
                                    ),
                                  )
                                ],
                              )),
                          Container(
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  border: Border.all(
                                    color: Colors.black45,
                                  )),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Icon(
                                        Icons.info_outline,
                                        color: Colors.green,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "assets/images/kamyonet.png",
                                        width: 80,
                                        height: 50,
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text('MİDİ',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold))
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text('450 TRY',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold))
                                      ],
                                    ),
                                  )
                                ],
                              )),
                          Container(
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  border: Border.all(
                                    color: Colors.black45,
                                  )),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Icon(
                                        Icons.info_outline,
                                        color: Colors.green,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "assets/images/tır.png",
                                        width: 80,
                                        height: 50,
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text('MAX',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold))
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text('800 TRY',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold))
                                      ],
                                    ),
                                  )
                                ],
                              )),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.money, color: Colors.green),
              label: 'Nakit',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add, color: Colors.green, size: 25),
              label: 'Ekle',
            ),
          ]),
    );
  }
}
