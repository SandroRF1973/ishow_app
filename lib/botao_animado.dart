import 'package:flutter/material.dart';

class BotaoAnimado extends StatelessWidget {
  final AnimationController? controller;

  const BotaoAnimado({@required this.controller, super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _animacaoSize!,
        builder: (context, widget) {
          return InkWell(
            onTap: () {},
            child: Container(
              height: 50,
              width: _animacaoSize!.value,
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
          );
        });
  }
}
