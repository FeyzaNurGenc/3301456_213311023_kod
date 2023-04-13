import 'package:flutter/material.dart';

class BanyoEkran extends StatefulWidget {
  const BanyoEkran({super.key});

  @override
  State<BanyoEkran> createState() => _BanyoEkranState();
}

class _BanyoEkranState extends State<BanyoEkran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Banyo")),
      body: Banyo(),
    );
  }
}

class Banyo extends StatefulWidget {
  const Banyo({super.key});

  @override
  State<Banyo> createState() => _BanyoState();
}

class _BanyoState extends State<Banyo> {
  TextEditingController t1 = TextEditingController();
  List AlisverisListesi = [
    "Bornoz Takımı",
    "paspas",
    "Havlular",
    "Avize",
    "Klozet Takımı",
    "Lifler ve Keseler",
    "Sabunluk",
    "sıvı sabunluk",
  ];

  elemanEkle() {
    setState(() {
      AlisverisListesi.add(t1.text);
      t1.clear();
    });
  }

  elemanCikart() {
    setState(() {
      AlisverisListesi.remove(t1.text);
      t1.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Flexible(
            child: ListView.builder(
                itemCount: AlisverisListesi.length,
                itemBuilder: (context, indeksNumarasi) {
                  return ListTile(
                    title: Text(AlisverisListesi[indeksNumarasi]),
                  );
                })),
        TextField(
          controller: t1,
        ),
        ElevatedButton(onPressed: elemanEkle, child: Text("Ekle")),
        ElevatedButton(onPressed: elemanCikart, child: Text("Çıkart")),
      ],
    ));
  }
}
