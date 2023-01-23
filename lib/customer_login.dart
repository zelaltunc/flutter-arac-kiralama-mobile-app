import 'package:bitirmeprojesi/customer_register.dart';
import 'package:bitirmeprojesi/home_page.dart';
import 'package:bitirmeprojesi/sifremi_unuttum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomerLogin extends StatefulWidget {
  const CustomerLogin({super.key});

  @override
  State<CustomerLogin> createState() => _CustomerLoginState();
}

class _CustomerLoginState extends State<CustomerLogin> {
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
                height: height / 2,
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
                    SizedBox(
                      height: 74,
                      child: Image.asset("assets/images/logo_black.png"),
                    ),
                    const SizedBox(
                      height: 55,
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
                        height: 500,
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
                              "GİRİŞ",
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 23,
                                  fontWeight: FontWeight.w700),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            TextField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                labelText: "E-posta veya Telefon ",
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
                            Row(
                              children: [
                                Row(
                                  children: [
                                    TextButton(
                                        child: Text(
                                          'Şifremi Unuttum',
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 3, 173, 9)),
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      SifremiUnuttum()));
                                        })
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Column(
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(
                                      width: 200,
                                      height: 40,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      HomePage()));
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              Color.fromARGB(255, 3, 173, 9),
                                          padding: EdgeInsets.all(10),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20.0)),
                                        ),
                                        child: Center(child: Text('GİRİŞ')),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                            child: Divider(
                                          thickness: 1,
                                          height: 1,
                                          color: Colors.grey,
                                        )),
                                        SizedBox(
                                          width: 12,
                                        ),
                                        Text("ya da",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 13,
                                                fontWeight: FontWeight.w700)),
                                        SizedBox(
                                          width: 12,
                                        ),
                                        Expanded(
                                            child: Divider(
                                          thickness: 1,
                                          height: 1,
                                          color: Colors.grey,
                                        )),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          height: 33,
                                          child: Image.asset(
                                              "assets/images/apple.png"),
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        SizedBox(
                                          height: 35,
                                          child: Image.asset(
                                              "assets/images/google.png"),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text("Hesabınız yok mu?"),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        TextButton(
                                            child: Text(
                                              'Kayıt Ol',
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 3, 173, 9),
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          CustomerRegister()));
                                            })
                                      ],
                                    )
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
