import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 400,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("imagens/fundo.png"), fit: BoxFit.fill),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 10,
                    child: Image.asset("imagens/detalhe1.png"),
                  ),
                  Positioned(
                      left: 50, child: Image.asset("imagens/detalhe2.png"))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 15,
                              spreadRadius: 4)
                        ]),
                    child: Column(
                      children: const [
                        TextField(
                          decoration: InputDecoration(hintText: "Email"),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const InkWell(),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Esqueci minha senha!",
                    style: TextStyle(
                        color: Color.fromRGBO(255, 100, 127, 1),
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
