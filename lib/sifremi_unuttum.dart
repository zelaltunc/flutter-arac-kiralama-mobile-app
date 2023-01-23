import 'package:flutter/material.dart';

class SifremiUnuttum extends StatefulWidget {
  const SifremiUnuttum({super.key});

  @override
  State<SifremiUnuttum> createState() => _SifremiUnuttumState();
}

class _SifremiUnuttumState extends State<SifremiUnuttum> {
  bool _isVisible = false;
  bool _isPasswordEightCharacters = false;
  bool _hasPasswordOneNumber = false;

  onPasswordChanged(String password) {
    final numericRegex = RegExp(r'[0-9]');
    setState(() {
      _isPasswordEightCharacters = false;
      if (password.length >= 8) _isPasswordEightCharacters = true;

      _hasPasswordOneNumber = false;
      if (numericRegex.hasMatch(password)) ;
      _hasPasswordOneNumber = true;
    });
  }

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
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "Şifremi Unuttum",
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.green),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "Şifrenizi Yenilemek İçin Lütfen Aşağıdaki Adımları Takip Edin ",
            style: TextStyle(fontSize: 15, height: 1, color: Colors.grey),
          ),
          SizedBox(
            height: 30,
          ),
          TextField(
            onChanged: (password) => onPasswordChanged(password),
            obscureText: !_isVisible,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                onPressed: (() {
                  setState(() {
                    _isVisible = !_isVisible;
                  });
                }),
                icon: _isVisible
                    ? Icon(
                        Icons.visibility,
                        color: Colors.green,
                      )
                    : Icon(
                        Icons.visibility_off,
                        color: Colors.green,
                      ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.green),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.green),
              ),
              hintText: "Şifre",
              contentPadding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Row(
            children: [
              AnimatedContainer(
                duration: Duration(milliseconds: 500),
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: _isPasswordEightCharacters
                      ? Colors.green
                      : Colors.transparent,
                  border: _isPasswordEightCharacters
                      ? Border.all(color: Colors.transparent)
                      : Border.all(color: Colors.green),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 15,
                  ),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Text("En Az 8 Karakter İçermelidir."),
            ],
          ),
          Row(
            children: [
              SizedBox(
                height: 35,
              ),
              AnimatedContainer(
                duration: Duration(milliseconds: 500),
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color:
                      _hasPasswordOneNumber ? Colors.green : Colors.transparent,
                  border: _hasPasswordOneNumber
                      ? Border.all(color: Colors.transparent)
                      : Border.all(color: Colors.green),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 15,
                  ),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Text("En Az 1 Numara İçermelidir."),
            ],
          ),
          SizedBox(
            height: 65,
          ),
          MaterialButton(
            height: 40,
            minWidth: double.infinity,
            onPressed: () {},
            color: Colors.green,
            child: Text(
              "Şifre Oluştur",
              style: TextStyle(color: Colors.white),
            ),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          )
        ]),
      ),
    );
  }
}
