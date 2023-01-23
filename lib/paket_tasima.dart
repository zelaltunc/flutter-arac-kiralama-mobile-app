import 'package:bitirmeprojesi/paket_tasima2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PaketTasima extends StatefulWidget {
  const PaketTasima({super.key});

  @override
  State<PaketTasima> createState() => _PaketTasimaState();
}

class _PaketTasimaState extends State<PaketTasima> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
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
        title: Container(
            child: Text("Adres Ekle", style: TextStyle(color: Colors.green))),
        centerTitle: true,
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Text(
                "İletişim Bilgilerinizi Giriniz",
                style: TextStyle(
                  fontSize: 16,
                ),
              )
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: 184,
          color: Colors.white,
          child: Column(
            children: [
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Adı",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Soyadı",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    labelText: "Telefon Numarası ",
                    border: OutlineInputBorder()),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text(
                    "Adres Bilgilerini Giriniz",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 317,
              color: Colors.white,
              child: Column(
                children: [
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "İl",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "İlçe",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "Mahalle",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "Adres",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "Adres Başlığı Giriniz",
                      border: OutlineInputBorder(),
                    ),
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
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: 200,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PaketTasima2()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 3, 173, 9),
                      padding: EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                    ),
                    child: Center(child: Text("Devam Et")),
                  ),
                ),
              ],
            ),
          ],
        ),
      ]),
    );
  }
}
