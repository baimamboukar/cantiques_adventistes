import 'package:cantiques_adventistes/models/cantique.dart';
import 'package:cantiques_adventistes/utils/palette.dart';
import 'package:flutter/material.dart';

class CantiqueView extends StatelessWidget {
  const CantiqueView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Cantique cantique = Cantique(
        title: "Baaba Ceenido",
        number: 10,
        category: "Yettore",
        content: [
          "Baa'a Ceenido heedou noppi m'aadaa",
          "Toornde am fou mi yidi haa a djaba Est sit dolor irure labore est amet aliqua pariatur culpa et cillum culpa exercitation ipsum.",
          "Aute ea veniam in non veniam occaecat non velit eiusmod ut excepteur nisi aute. Culpa aliqua aliquip quis ut nostrud ut. Id enim ipsum do ullamco voluptate. Proident ipsum esse laborum id. Cillum aute enim id do sint et exercitation quis. Ut veniam labore esse cillum enim enim do laborum."
        ]);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Text(" ${cantique.number} - ${cantique.title}",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Palette.primary)),
              const SizedBox(height: 20),
              for (String block in cantique.content)
                cantique.content.indexOf(block) == 1
                    ? Text(
                        block,
                        style: TextStyle(fontSize: 20, color: Palette.primary),
                      )
                    : Text(
                        block,
                        style: TextStyle(fontSize: 20, color: Palette.dark),
                      ),
            ],
          ),
        ),
      ),
    );
  }
}
