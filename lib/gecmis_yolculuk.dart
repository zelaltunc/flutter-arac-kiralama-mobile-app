import 'package:flutter/material.dart';

class GecmisYolculuk extends StatefulWidget {
  const GecmisYolculuk({super.key});

  @override
  State<GecmisYolculuk> createState() => _GecmisYolculukState();
}

class _GecmisYolculukState extends State<GecmisYolculuk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Geçmiş Yolculuklar",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.green,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 20),
            height: 130,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "20.01.2023 / 13.55",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 75,
                    ),
                    Text(
                      "140 TL",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.green),
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.arrow_right,
                        color: Colors.green,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 16,
                        ),
                        Text("Aydınlar Mah. Sevgi Sok...")
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 20),
            height: 130,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "15.01.2023 / 17.45",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 75,
                    ),
                    Text(
                      "280 TL",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.green),
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.arrow_right,
                        color: Colors.green,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 16,
                        ),
                        Text("Aydınlar Mah. Sevgi Sok...")
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 20),
            height: 130,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "10.01.2023 / 18.30",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 75,
                    ),
                    Text(
                      "840 TL",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.green),
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.arrow_right,
                        color: Colors.green,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 16,
                        ),
                        Text("Aydınlar Mah. Sevgi Sok...")
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 20),
            height: 130,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "01.01.2023 / 12.15",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 75,
                    ),
                    Text(
                      "540 TL",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.green),
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.arrow_right,
                        color: Colors.green,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 16,
                        ),
                        Text("Aydınlar Mah. Sevgi Sok...")
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
