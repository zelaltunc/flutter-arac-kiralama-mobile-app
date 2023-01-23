import 'dart:ui';

import 'package:bitirmeprojesi/credit_card.dart';
import 'package:bitirmeprojesi/customer_login.dart';
import 'package:bitirmeprojesi/gecmis_yolculuk.dart';
import 'package:bitirmeprojesi/iletisim.dart';
import 'package:bitirmeprojesi/user_profile.dart';
import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Colors.grey[100],
      ),
      child: Drawer(
          child: Container(
        width: 200,
        color: Colors.grey[100],
        child: ListView(children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/logo_green.png',
                      width: 160, height: 80),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: (() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const UserProfile()),
              );
            }),
            child: Container(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Icon(Icons.person),
                      Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Text(
                          'Profilim',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const GecmisYolculuk()),
              );
            }),
            child: Container(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Icon(Icons.history),
                      Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Text(
                          'Geçmiş Yolculuklar',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const credi()),
              );
            }),
            child: Container(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Icon(Icons.payment),
                      Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Text(
                          'Kayıtlı Kartlar',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const IletisimPage()),
              );
            }),
            child: Container(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Icon(Icons.textsms_outlined),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          'İletişim Formu',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ]),
      )),
    );
  }
}
