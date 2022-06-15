import 'package:flutter/material.dart';
import 'package:petgallerry/bottomBar.dart';
import 'package:petgallerry/homePage.dart';
import 'package:petgallerry/services/auth.dart';
import 'package:petgallerry/signup.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Login createState() => Login();
}

class Login extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(color: Colors.white),
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 75, bottom: 100),
                    child: Image.network(
                      "https://seeklogo.com/images/P/pokeball-logo-DC23868CA1-seeklogo.com.png",
                      width: 200,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, bottom: 0),
                    child: Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22),
                          color: Colors.orange.shade300),
                      child: new TextField(
                        cursorColor: Colors.white,
                        controller: _emailController,
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                        decoration: new InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Colors.transparent,
                            )),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Colors.transparent,
                            )),
                            border: new OutlineInputBorder(
                                borderSide: new BorderSide(
                                    color: Color.fromARGB(255, 6, 253, 228))),
                            hintText:
                                'E-posta adresinizi giriniz   abcd@gmail.com',
                            labelText: 'E-posta',
                            labelStyle: TextStyle(color: Colors.white),
                            hintStyle: TextStyle(color: Colors.white),
                            prefixIcon: const Icon(
                              Icons.email,
                              color: Colors.white,
                            ),
                            suffixStyle: const TextStyle(color: Colors.green)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 20, bottom: 0),
                    child: Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: Colors.orange.shade300,
                      ),
                      child: new TextField(
                        obscureText: true,
                        enableSuggestions: false,
                        autocorrect: false,
                        cursorColor: Colors.white,
                        controller: _passwordController,
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                        decoration: new InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Colors.transparent,
                            )),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Colors.transparent,
                            )),
                            border: new OutlineInputBorder(
                                borderSide: new BorderSide(
                                    color: Color.fromARGB(255, 6, 253, 228))),
                            hintText: 'Şifrenizi giriniz',
                            labelText: 'Şifre',
                            labelStyle: TextStyle(color: Colors.white),
                            hintStyle: TextStyle(color: Colors.white),
                            prefixIcon: const Icon(
                              Icons.email,
                              color: Colors.white,
                            ),
                            suffixStyle: const TextStyle(color: Colors.green)),
                      ),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => (signUpPage())));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 2),
                      child: Text(
                        'Hesap Oluştur',
                        style: TextStyle(
                            color: Colors.orange.shade500, fontSize: 15),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: MaterialButton(
                      onPressed: () {
                        _authService
                            .signIn(
                                _emailController.text, _passwordController.text)
                            .then((value) {
                          return Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BottomBar()));
                        });
                      },
                      child: Container(
                        width: 120,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.transparent,
                            border: Border.all(
                                color: Colors.orange.shade400, width: 2)),
                        child: Center(
                          child: Text(
                            "Giriş Yap",
                            style: TextStyle(
                              color: Colors.orange.shade400,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

class anaSayfaTasarim extends StatefulWidget {
  @override
  State<anaSayfaTasarim> createState() => _anaSayfaTasarimState();
}

class _anaSayfaTasarimState extends State<anaSayfaTasarim> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold();
  }
}
