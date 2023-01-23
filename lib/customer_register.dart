import 'package:bitirmeprojesi/home_page.dart';
import 'package:flutter/material.dart';

class CustomerRegister extends StatefulWidget {
  const CustomerRegister({super.key});

  @override
  State<CustomerRegister> createState() => _CustomerRegisterState();
}

class _CustomerRegisterState extends State<CustomerRegister> {
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
                    SizedBox(
                      height: 70,
                      child: Image.asset("assets/images/logo_black.png"),
                    ),
                    const SizedBox(
                      height: 85,
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
                            TextField(
                              // klavyeden sadece numara girişine izin ver yaptık ve 20 karakter sınırı verdik
                              keyboardType: TextInputType.number,
                              obscureText: true,

                              maxLength: 20,
                              decoration: InputDecoration(
                                labelText: "Şifrenizi Tekrar Giriniz",
                                prefixIcon: Icon(
                                  Icons.password,
                                  color: Colors.green,
                                ),
                                border: OutlineInputBorder(),
                              ),
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  value: isChecked,
                                  activeColor: Color.fromARGB(255, 43, 120, 46),
                                  onChanged: (newBool) {
                                    setState(() {
                                      isChecked = newBool;
                                    });
                                  },
                                ),
                                Row(
                                  children: [
                                    TextButton(
                                        child: Text(
                                          'Kullanım koşullarını kabul ediyorum.',
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 17, 42, 18)),
                                        ),
                                        onPressed: () {})
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 9,
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  value: isSwitched,
                                  activeColor: Color.fromARGB(255, 43, 120, 46),
                                  onChanged: (newBool) {
                                    setState(() {
                                      isSwitched = newBool!;
                                    });
                                  },
                                ),
                                Row(
                                  children: [
                                    TextButton(
                                        child: Text(
                                          'KVVK metnini okudum ve kabul ediyorum.',
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 17, 42, 18)),
                                        ),
                                        onPressed: () {})
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,
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
                                        child: Center(child: Text("Kaydol")),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 16,
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
