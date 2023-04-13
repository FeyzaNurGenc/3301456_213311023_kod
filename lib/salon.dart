import 'package:flutter/material.dart';

class SalonEkran extends StatefulWidget {
  const SalonEkran({super.key});

  @override
  State<SalonEkran> createState() => _SalonEkranState();
}

class _SalonEkranState extends State<SalonEkran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Salon")),
      body: Salon(),
    );
  }
}

class Salon extends StatefulWidget {
  const Salon({super.key});

  @override
  State<Salon> createState() => _SalonState();
}

class _SalonState extends State<Salon> {
  TextEditingController t1 = TextEditingController();
  List AlisverisListesi = [
    "Avize",
    "Yemek odası takımı",
    "Halı",
    "Perde",
    "Mobiya"
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
