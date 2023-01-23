import 'package:bitirmeprojesi/driver_register2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DriverRegister extends StatefulWidget {
  const DriverRegister({super.key});

  @override
  State<DriverRegister> createState() => _DriverRegisterState();
}

class _DriverRegisterState extends State<DriverRegister> {
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
                        //    "KAYDOL",
                        // style: TextStyle(
                        //  color: Colors.white,
                        //    fontSize: 25,
                        //fontWeight: FontWeight.w800),
                        //  )
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
                              "Kişisel Bilgilerinizi Giriniz",
                              style: TextStyle(
                                  color: Colors.green,
                                  fontStyle: FontStyle.italic,
                                  fontSize: 23,
                                  fontWeight: FontWeight.w500),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            TextField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                labelText: "Ad ve Soyad",
                                prefixIcon: Icon(
                                  Icons.account_circle,
                                  color: Colors.green,
                                ),
                                border: OutlineInputBorder(),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            TextField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                labelText: "E-posta  ",
                                prefixIcon: Icon(
                                  Icons.email,
                                  color: Colors.green,
                                ),
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
                                  labelText: "Telefon Numarası ",
                                  prefixIcon: Icon(
                                    Icons.phone,
                                    color: Colors.green,
                                  ),
                                  border: OutlineInputBorder()),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            TextField(
                              // klavyeden sadece numara girişine izin ver yaptık ve 20 karakter sınırı verdik
                              keyboardType: TextInputType.number,
                              obscureText: true,

                              maxLength: 20,
                              decoration: InputDecoration(
                                labelText: "Şifre Giriniz",
                                prefixIcon: Icon(
                                  Icons.password,
                                  color: Colors.green,
                                ),
                                border: OutlineInputBorder(),
                              ),
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.green),
                                  ),
                                  labelText: "Bulunduğu Şehir",
                                  prefixIcon: Icon(
                                    Icons.location_city_outlined,
                                    color: Colors.green,
                                  ),
                                  border: OutlineInputBorder()),
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
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      DriverRegister2()));
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              Color.fromARGB(255, 3, 173, 9),
                                          padding: EdgeInsets.all(10),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20.0)),
                                        ),
                                        child: Center(child: Text("Devam Et")),
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
