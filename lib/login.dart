import 'package:flutter/material.dart';
import 'package:ishow_app/input_customizado.dart';

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
                        InputCustomizado(
                          hint: "Email",
                          obscure: false,
                          icon: Icon(Icons.person),
                        ),
                        InputCustomizado(
                          hint: "Senha",
                          obscure: true,
                          icon: Icon(Icons.lock),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: const LinearGradient(colors: [
                            Color.fromRGBO(255, 100, 127, 1),
                            Color.fromRGBO(255, 123, 145, 1)
                          ])),
                      child: const Center(
                        child: Text(
                          "Entrar",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
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
