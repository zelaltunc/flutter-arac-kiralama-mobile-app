import 'package:bitirmeprojesi/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DriverRegister2 extends StatefulWidget {
  const DriverRegister2({super.key});

  @override
  State<DriverRegister2> createState() => _DriverRegister2State();
}

class _DriverRegister2State extends State<DriverRegister2> {
  bool? isChecked = false;
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SizedBox(
          height: height,
          width: double.infinity,
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: height / 2.5,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 22, 172, 2),
                    // kutunun kenarlarını ovalleştirdik bu kısımda dekarasyon ekledik.
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(60),
                      bottomRight: Radius.circular(60),
                    )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //  Text(
                        //  "KAYDOL",
                        //style: TextStyle(
                        //  color: Colors.white,
                        //fontSize: 25,
                        //fontWeight: FontWeight.w800),
                        //)
                      ],
                    ),
                    SizedBox(
                      height: 70,
                      child: Image.asset("assets/images/logo_black.png"),
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    // const Text("Milyonlarca Ücretsiz Şarkı Spotify'da",
                    //    style: TextStyle(
                    //       fontSize: 18,
                    //     color: Color.fromARGB(255, 213, 214, 215),
                    //   fontWeight: FontWeight.w600,
                    // fontFamily: "Roboto",
                    //fontStyle: FontStyle.normal))
                  ],
                ),
              ),
              //widgetların kaydırılabilir olmasını sağlar Genellikle Column ve Row gibi birden çok child sayfaya sığmaması durumunda sayfayı kaydırılabilir yaparak widgetların sıkışmamasını sağlar
              SingleChildScrollView(
                child: SizedBox(
                  height: height,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 570,
                        margin: const EdgeInsets.all(20),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 32, vertical: 40),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(32)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              "Kaydol",
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Araç Bilgilerinizi Giriniz",
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 23,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w500),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            TextField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                labelText: "Araç Türü ",
                                border: OutlineInputBorder(),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.green),
                                  ),
                                  labelText: "Marka",
                                  border: OutlineInputBorder()),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            TextField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                labelText: "Model  ",
                                border: OutlineInputBorder(),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            TextFormField(
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.green),
                                  ),
                                  labelText: "Model Yılı ",
                                  border: OutlineInputBorder()),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            TextField(
                              // klavyeden sadece numara girişine izin ver yaptık ve 20 karakter sınırı verdik
                              keyboardType: TextInputType.number,
                              obscureText: true,

                              decoration: InputDecoration(
                                labelText: "Araç Plakası",
                                border: OutlineInputBorder(),
                              ),
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
                                      width: 150,
                                      height: 40,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          // Navigator.push(
                                          //   context,
                                          // MaterialPageRoute(
                                          //   builder: (context) =>
                                          //     HomePage()));
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              Color.fromARGB(255, 3, 173, 9),
                                          padding: EdgeInsets.all(10),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20.0)),
                                        ),
                                        child: Center(child: Text("Kaydol")),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
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
