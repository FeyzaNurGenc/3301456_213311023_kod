import 'package:flutter/material.dart';

class OturmaOdasiEkran extends StatefulWidget {
  const OturmaOdasiEkran({super.key});

  @override
  State<OturmaOdasiEkran> createState() => _OturmaOdasiEkranState();
}

class _OturmaOdasiEkranState extends State<OturmaOdasiEkran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Oturma odası")),
      body: OturmaOdasi(),
    );
  }
}

class OturmaOdasi extends StatefulWidget {
  const OturmaOdasi({super.key});

  @override
  State<OturmaOdasi> createState() => _OturmaOdasiState();
}

class _OturmaOdasiState extends State<OturmaOdasi> {
  TextEditingController t1 = TextEditingController();
  List AlisverisListesi = [
    "Koltuk takımı",
    "TV ünitesi",
    "Kitaplık",
    "Orta sehpa",
    "Zigon sehpa takımı",
    "Halı ",
    "Perde",
    "Kırlent",
    "Televizyon",
    "Sehpa Seti",
    "Depolama alanları",
    "Battaniye",
    "Minder",
    "Avize",
    "Abajur",
    "Lambader"
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
