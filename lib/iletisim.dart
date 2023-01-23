import 'package:flutter/material.dart';

class IletisimPage extends StatefulWidget {
  const IletisimPage({super.key});

  @override
  State<IletisimPage> createState() => _IletisimPageState();
}

class _IletisimPageState extends State<IletisimPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
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
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "İLETİŞİM FORMU",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.green.shade600,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text("Bizimle İletişime Geçin"),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Column(
                  children: [
                    SizedBox(
                      height: 12,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          filled: true,
                          hintText: "Ad Soyad",
                          border: InputBorder.none),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          filled: true,
                          hintText: "E-posta",
                          border: InputBorder.none),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    TextField(
                      maxLength: 100,
                      maxLines: 15,
                      decoration: InputDecoration(
                          filled: true,
                          hintText: "Metin",
                          border: InputBorder.none),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    MaterialButton(
                      height: 60,
                      minWidth: double.infinity,
                      color: Colors.green.shade600,
                      onPressed: () {},
                      child: Text(
                        "GÖNDER",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
