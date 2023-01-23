import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PaketTasima2 extends StatefulWidget {
  const PaketTasima2({super.key});

  @override
  State<PaketTasima2> createState() => _PaketTasima2State();
}

class _PaketTasima2State extends State<PaketTasima2> {
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
              child: Text("Teslimat Bilgileri",
                  style: TextStyle(color: Colors.green))),
          centerTitle: true,
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Text(
                  "İstenilen Bilgileri Giriniz",
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
                    labelText: "Paket Türü Giriniz (koli,evrak vs)",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  decoration: InputDecoration(
                    labelText: "Paket Ağırlığı (kg)",
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
                      labelText: "Paket Boyutu (cm)",
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
                      " Teslimat Bilgilerini Giriniz",
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
                        labelText: "Alıcı Adı Soyadı",
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
                          labelText: "Alıcı Numarası",
                          border: OutlineInputBorder()),
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
                        //  Navigator.push(
                        //    context,
                        //  MaterialPageRoute(
                        //    builder: (context) =>
                        //      DriverRegister2()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 3, 173, 9),
                        padding: EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                      ),
                      child: Center(child: Text("Kaydet")),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ]));
  }
}
